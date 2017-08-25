#!/usr/bin/env bash

# You need to run this script every time you modified rst files.
# This will update po files french messages and may be break english translation.
# Then edit modified po files to repair english translation...


# Generate pot files from rst files in build/locale
make gettext


# Generate po files from pot files in source/locale
# (use english (United-States) with label en_US)
sphinx-intl update -p build/locale -d source/locale/ -l en_US
