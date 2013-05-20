#!/bin/sh

rm resume.html
rm resume.pdf

cat outline.1.html resume.css outline.2.html >> resume.html
cat resume.md | markdown | perl SmartyPants.pl >> resume.html
cat outline.3.html >> resume.html

wkhtmltopdf resume.html resume.pdf
