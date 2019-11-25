infile=$(ls | grep ".md$" | grep -v "README.md" | sort -n)
pandoc $infile -o ${infile%.*}.pdf -f markdown+smart --from markdown --template "eisvogel.latex" --listings --number-sections --filter pandoc-crossref --filter pandoc-citeproc
