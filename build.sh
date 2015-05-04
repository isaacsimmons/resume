#!/bin/sh

rm resume.html
rm resume.pdf

cat outline.1.html resume.css outline.2.html >> resume.html
cat resume.md | perl scripts/markdown.pl | perl scripts/SmartyPants.pl >> resume.html
cat outline.3.html >> resume.html

wkhtmltopdf resume.html resume.pdf
#TODO: play with --page-size options in wkhtmltopdf to do pagination-friendly stuff?
