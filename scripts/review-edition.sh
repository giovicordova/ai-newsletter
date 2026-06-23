#!/usr/bin/env bash
# review-edition.sh — structural quality gate for a generated edition file.
#
# Enforces the Telegram contract from .claude/skills/ai-llm-briefing/SKILL.md:
#   - For each present run section (## Telegram — Run HH:MM):
#       * If the body is a SKIPPED stub (starts with "SKIPPED"), it passes
#         untouched (no post this slot).
#       * Otherwise body ≤ 500 chars (excluding URL and hashtag lines),
#         exactly 1 URL, ≤ 4 hashtags, and a "Source-anchored claims" block
#         in the matching Notes subsection.
#   - Take post is OPTIONAL (Friday only). If present:
#       * body ≤ 280 chars including the "Claude's weekly take: " prefix
#       * exactly one URL
#       * starts with "Claude's weekly take:"
#   - Notes section is present
#
# Run slots are configurable below; the gate only checks slots that exist in
# the file, so an early-day file with one run section still passes.
#
# Exit code = number of failures (0 = all checks pass).

if [ "${1:-}" = "--help" ] || [ "${1:-}" = "-h" ] || [ $# -eq 0 ]; then
  cat <<EOF
Usage: review-edition.sh <path-to-edition.md>

Checks the edition meets the Telegram spec (per-run sections, SKIPPED stubs
allowed; weekly take post optional, Friday only).
EOF
  exit 0
fi

EDITION="$1"
RUN_SLOTS="07:00 13:00 20:00"
MAX_CHARS=500          # daily beat cap: lead + quote + reaction (excludes URL + hashtag lines)
MAX_HASHTAGS=4

if [ ! -f "$EDITION" ]; then
  echo "Error: file not found: $EDITION"
  exit 99
fi

PASS=0; FAIL=0; TOTAL=0

check() {
  local label="$1"; local result="$2"
  TOTAL=$((TOTAL + 1))
  if [ "$result" -eq 0 ]; then
    PASS=$((PASS + 1)); printf "  ✅  %s\n" "$label"
  else
    FAIL=$((FAIL + 1)); printf "  ❌  %s\n" "$label"
  fi
}

# Extract a section body between "## <heading>" and the next "## " or EOF.
extract_section() {
  local heading="$1"
  awk -v h="$heading" '
    $0 == h { capture=1; next }
    capture && /^## / { exit }
    capture { print }
  ' "$EDITION"
}

# Extract a Notes subsection body between "### Run HH:MM ..." and the next "### "/"## "/EOF.
extract_notes_subsection() {
  local slot="$1"
  awk -v h="### Run $slot" '
    index($0, h) == 1 { capture=1; next }
    capture && (/^### / || /^## /) { exit }
    capture { print }
  ' "$EDITION"
}

# Body chars excluding URL-only lines.
body_chars() {
  printf '%s' "$1" | awk '
    /^[[:space:]]*$/ { next }
    /^[[:space:]]*https?:\/\// { next }
    /^[[:space:]]*#[A-Za-z0-9]/ { next }
    { gsub(/^[[:space:]]+|[[:space:]]+$/, ""); printf "%s", $0 }
  ' | wc -c | tr -d ' '
}

count_urls() {
  printf '%s' "$1" | grep -cE '^[[:space:]]*https?://' || true
}

count_hashtags() {
  printf '%s' "$1" | grep -oE '(^|[[:space:]])#[A-Za-z0-9_]+' | wc -l | tr -d ' '
}

is_skip() {
  printf '%s' "$1" | sed -e 's/^[[:space:]]*//' | grep -qE '^SKIPPED'
}

echo "Checking $EDITION"
echo ""

# Per-run sections (only those present in the file are checked).
RUNS_FOUND=0
for SLOT in $RUN_SLOTS; do
  SECTION=$(extract_section "## Telegram — Run $SLOT")
  [ -z "$SECTION" ] && continue
  RUNS_FOUND=$((RUNS_FOUND + 1))
  if is_skip "$SECTION"; then
    echo "  ℹ️  Run $SLOT — SKIPPED stub (no post this slot)"
    continue
  fi
  CHARS=$(body_chars "$SECTION")
  URLS=$(count_urls "$SECTION")
  HASHTAGS=$(count_hashtags "$SECTION")
  if [ "$CHARS" -le "$MAX_CHARS" ]; then check "Run $SLOT body ≤ $MAX_CHARS chars (got $CHARS)" 0
  else check "Run $SLOT body ≤ $MAX_CHARS chars (got $CHARS)" 1; fi
  if [ "$URLS" -eq 1 ]; then check "Run $SLOT has exactly 1 URL" 0
  else check "Run $SLOT has exactly 1 URL (got $URLS)" 1; fi
  if [ "$HASHTAGS" -le "$MAX_HASHTAGS" ]; then check "Run $SLOT has ≤ $MAX_HASHTAGS hashtags (got $HASHTAGS)" 0
  else check "Run $SLOT has ≤ $MAX_HASHTAGS hashtags (got $HASHTAGS)" 1; fi
  if printf '%s' "$(extract_notes_subsection "$SLOT")" | grep -q 'Source-anchored claims:'; then
    check "Run $SLOT Notes has Source-anchored claims block" 0
  else
    check "Run $SLOT Notes has Source-anchored claims block" 1
  fi
done

if [ "$RUNS_FOUND" -eq 0 ]; then
  check "At least one run section present" 1
fi

# Take post checks (optional — only validated when present)
TAKE_SECTION=$(extract_section "## Telegram — Take Post")
if [ -z "$TAKE_SECTION" ]; then
  echo "  ℹ️  Take post section absent (expected Mon-Thu/Sat-Sun; required Fri)"
else
  TAKE_CHARS=$(body_chars "$TAKE_SECTION")
  TAKE_URLS=$(count_urls "$TAKE_SECTION")
  if [ "$TAKE_CHARS" -le 280 ]; then check "Take post body ≤ 280 chars (got $TAKE_CHARS)" 0
  else check "Take post body ≤ 280 chars (got $TAKE_CHARS)" 1; fi
  if [ "$TAKE_URLS" -eq 1 ]; then check "Take post has exactly 1 URL" 0
  else check "Take post has exactly 1 URL (got $TAKE_URLS)" 1; fi
  if printf '%s' "$TAKE_SECTION" | grep -qE "^Claude's weekly take:"; then
    check "Take post starts with Claude's weekly take: prefix" 0
  else
    check "Take post starts with Claude's weekly take: prefix" 1
  fi
fi

# Notes section
NOTES_SECTION=$(extract_section "## Notes (archive only — not sent to Telegram)")
if [ -n "$NOTES_SECTION" ]; then check "Notes section present" 0
else check "Notes section present" 1; fi

echo ""
printf "Result: %d/%d passed\n" "$PASS" "$TOTAL"
exit "$FAIL"
