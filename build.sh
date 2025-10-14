#!/usr/bin/env bash
set -euo pipefail

# Requirements:
# - pandoc
# - TeX engine (xelatex from TeX Live) for PDF
# Optional:
# - wkhtmltopdf if you choose the HTML->PDF path

INPUT="resume.md"
OUT_DIR="dist"
mkdir -p "$OUT_DIR"

# Build PDF with Pandoc + XeLaTeX
pandoc "$INPUT"   --from=markdown   --pdf-engine=xelatex   -V geometry:margin=1in   -V mainfont="Latin Modern Roman"   -V monofont="Latin Modern Mono"   -o "$OUT_DIR/resume.pdf"

# Build HTML (simple)
pandoc "$INPUT"   --from=markdown   -t html5   -s   -o "$OUT_DIR/resume.html"

echo "Built: $OUT_DIR/resume.pdf and $OUT_DIR/resume.html"
