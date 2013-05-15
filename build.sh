#!/bin/sh

rm resume.html
rm resume.pdf
cat resume.md | markdown | perl SmartyPants.pl > resume.html 
wkhtmltopdf resume.html resume.pdf
