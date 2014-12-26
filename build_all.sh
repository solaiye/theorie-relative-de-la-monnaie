#!/usr/bin/env bash

# use tag for only directives (adapt image sizes for output)
make html SPHINXOPTS="-t html"
make epub SPHINXOPTS="-t epub"
make latexpdf SPHINXOPTS="-t latex"
