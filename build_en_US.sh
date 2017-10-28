#!/usr/bin/env bash

# set build release version in ENV to propagate it in documents
export BUILD_RELEASE=`cat ./VERSION`

# required to avoid pdf make to fail if a french latex build was made before
rm -r build/latex

# GENERATE MO FILES
sphinx-intl build --locale-dir source/locale

# HTML
# use tag for only directives (adapt image sizes for output)
make html SPHINXOPTS="-t html -D version='${BUILD_RELEASE}' -D release='${BUILD_RELEASE}' -D language='en_US' -D html_theme_path='themes/en_US' -D html_static_path='themes/en_US/html/static'"

# EPUB
make epub SPHINXOPTS="-t epub -D version='${BUILD_RELEASE}' -D release='${BUILD_RELEASE}' -D language='en_US' -D html_theme_path='themes/en_US' -D html_static_path='themes/en_US/epub/static' -D epub_title='Relative Theory of Money v2.718 - rev. ${BUILD_RELEASE}'"
cp build/epub/TheorieRelativedelaMonnaie.epub build/html/.

# PDF
# make latexpdf SPHINXOPTS="-t latex -D language='en_US' -D latex_elements.title='Relative Theory of Money' -D latex_elements.release='' -D latex_elements.releasename=''"
make latexpdf SPHINXOPTS="-t latex -D version='${BUILD_RELEASE}' -D release='${BUILD_RELEASE}' -D language='en_US' -D latex_elements.title='Relative Theory of Money v2.718'"
cp build/latex/TheorieRelativedelaMonnaie.pdf build/html/.

# label folder as english version
rm -rf build/en_US/html
mv build/html build/en_US
