#!/bin/sh

rm resume.html
rm resume.pdf

cat template/outline.1.html template/resume.css template/outline.2.html >> resume.html
cat resume.md | perl scripts/markdown.pl | perl scripts/SmartyPants.pl >> resume.html
cat template/outline.3.html >> resume.html

wkhtmltopdf resume.html resume.pdf
#TODO: play with --page-size options in wkhtmltopdf to do pagination-friendly stuff?
