#!/usr/bin/env bash

# required to avoid pdf make to fail if a french latex build was made before
rm -r build/latex

# GENERATE MO FILES
sphinx-intl build --locale-dir source/locale

# HTML
# use tag for only directives (adapt image sizes for output)
make html SPHINXOPTS="-t html -D language='en_US' -D html_theme_path='themes/en_US' -D html_static_path='themes/en_US/html/static'"

# EPUB
make epub SPHINXOPTS="-t epub -D language='en_US' -D html_theme_path='themes/en_US' -D html_static_path='themes/en_US/epub/static'"
cp build/epub/TheorieRelativedelaMonnaie.epub build/html/.

# PDF
 make latexpdf SPHINXOPTS="-t latex -D language='en_US' -D latex_elements.title='Relative Theory of Money' -D latex_elements.release='' -D latex_elements.releasename=''"
 cp build/latex/TheorieRelativedelaMonnaie.pdf build/html/.

# label folder as english version
mv build/html build/en_US
