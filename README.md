# Latex md template

[Eisvogel Template](https://github.com/Wandmalfarbe/pandoc-latex-template) with nice background image for the titlepage, no title rule and some helper scripts.

## Prerequisites
* Pandoc
* `pandoc-citeproc`
* `pandoc-crossref`
* Imagemagick

## Setup
* Run `./create_titlepage.sh` to create titlepage with blur. Might have to adjust `starty` and `endy` in the script if your title or authors spans multiple lines
* Run `./compile.sh` to create pdf. It will use the first md it can find in the top level directory.
