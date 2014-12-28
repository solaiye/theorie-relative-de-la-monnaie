#!/usr/bin/env bash

# use tag for only directives (adapt image sizes for output)
make html SPHINXOPTS="-t html"
make epub SPHINXOPTS="-t epub"
cp build/epub/TheorieRelativedelaMonnaie.epub build/html/.
make latexpdf SPHINXOPTS="-t latex"
cp build/latex/TheorieRelativedelaMonnaie.pdf build/html/.

