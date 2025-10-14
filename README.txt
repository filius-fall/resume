Local resume generator

Files:
- resume.md — your data in Markdown.
- build.sh — builds PDF and HTML with Pandoc.

Steps:
1) Install Pandoc and a TeX engine (XeLaTeX).
   - Ubuntu: sudo apt update && sudo apt install -y pandoc texlive-xetex
2) Run:
   chmod +x build.sh
   ./build.sh
3) Outputs go to ./dist as resume.pdf and resume.html

Edit resume.md and re-run to regenerate.
