#!/bin/sh

rm *.html
rm *.pdf

FILENAME=${1:-resume}

cat template/outline.1.html template/resume.css template/outline.2.html >> "$FILENAME.html"
cat resume.md | perl scripts/markdown.pl | perl scripts/SmartyPants.pl >> "$FILENAME.html"
cat template/outline.3.html >> "$FILENAME.html"

wkhtmltopdf --page-size Letter "$FILENAME.html" "$FILENAME.pdf"
