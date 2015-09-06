#!/usr/bin/env bash

# GENERATE MO FILES
sphinx-intl build --locale-dir source/locale

# HTML
# use tag for only directives (adapt image sizes for output)
make html SPHINXOPTS="-t html -D language='en_US' -D html_theme_path='themes/en_US' -D html_static_path='themes/en_US/html/static'"

# EPUB
make epub SPHINXOPTS="-t epub -D language='en_US'"
cp build/epub/TheorieRelativedelaMonnaie.epub build/html/.

# PDF
make latexpdf SPHINXOPTS="-t latex -D language='en_US'"
cp build/latex/TheorieRelativedelaMonnaie.pdf build/html/.

