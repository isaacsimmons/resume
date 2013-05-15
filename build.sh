#!/bin/sh

cat resume.md | markdown | perl SmartyPants.pl > out.html
wkhtmltopdf out.html out.pdf
rm out.html
