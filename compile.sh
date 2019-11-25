#!/bin/bash
if [[ -z "$1" ]]; then
    infile=$(ls | grep ".md$" | grep -v "README.md" | sort -n)
else
    infile=$1
fi
pandoc $infile -o ${infile%.*}.pdf -f markdown+smart --from markdown --template "eisvogel.latex" --listings --number-sections --filter pandoc-crossref --filter pandoc-citeproc
