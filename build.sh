#!/bin/sh

set -e

FILENAME=${1:-resume}

rm -f *.html
rm -f *.pdf

cat template/outline.1.html template/resume.css template/outline.2.html >> "$FILENAME.html"
cat resume.md | perl scripts/markdown.pl | perl scripts/SmartyPants.pl >> "$FILENAME.html"
cat template/outline.3.html >> "$FILENAME.html"

wkhtmltopdf -q --page-size Letter "$FILENAME.html" "$FILENAME.pdf"

echo "Successfully built $FILENAME.pdf"

if [ -n "$2" ]
then
  "$2" "$FILENAME.pdf"
fi
