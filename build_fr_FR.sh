#!/usr/bin/env bash

# set build release version in ENV to propagate it in documents
export BUILD_RELEASE=`cat ./VERSION`

# HTML
# use tag for only directives (adapt image sizes for output)
make html SPHINXOPTS="-t html -D version='${BUILD_RELEASE}' -D release='${BUILD_RELEASE}'"

# EPUB
make epub SPHINXOPTS="-t epub -D version='${BUILD_RELEASE}' -D release='${BUILD_RELEASE}' -D epub_title='Théorie Relative de la Monnaie v2.718 - rev. ${BUILD_RELEASE}'"
cp build/epub/TheorieRelativedelaMonnaie.epub build/html/.

# PDF
make latexpdf SPHINXOPTS="-t latex -D version='${BUILD_RELEASE}' -D release='${BUILD_RELEASE}'"
cp build/latex/TheorieRelativedelaMonnaie.pdf build/html/.

# label folder as french version
rm -rf build/fr_FR/html
mv build/html build/fr_FR
