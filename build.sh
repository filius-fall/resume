#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="$ROOT_DIR/dist"
HTML_FILE="$ROOT_DIR/Sreeram_Ambalam_Resume.html"
PDF_FILE="$OUT_DIR/Sreeram_Ambalam_Resume.pdf"

mkdir -p "$OUT_DIR"
cp "$HTML_FILE" "$OUT_DIR/Sreeram_Ambalam_Resume.html"

google-chrome \
  --headless=new \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$PDF_FILE" \
  "file://$HTML_FILE"

printf 'Built:\n  %s\n  %s\n' \
  "$PDF_FILE" \
  "$OUT_DIR/Sreeram_Ambalam_Resume.html"
