infile=$(ls | grep ".md$" | grep -v "README.md" | sort -n)
pandoc $infile -o ${infile%.*}.pdf --from markdown --template "eisvogel.latex" --listings --number-sections --filter pandoc-crossref --filter pandoc-citeproc
