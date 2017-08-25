#!/usr/bin/env bash

# HTML
# use tag for only directives (adapt image sizes for output)
make html SPHINXOPTS="-t html"

# EPUB
make epub SPHINXOPTS="-t epub"
cp build/epub/TheorieRelativedelaMonnaie.epub build/html/.

# PDF
make latexpdf SPHINXOPTS="-t latex"
cp build/latex/TheorieRelativedelaMonnaie.pdf build/html/.

# label folder as french version
rm -rf build/fr_FR/html
mv build/html build/fr_FR
