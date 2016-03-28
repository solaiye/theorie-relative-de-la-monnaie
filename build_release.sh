#!/usr/bin/env bash

current_dir=$(pwd)
cd build;

# zip the french build folder for release
zip -r TRM_fr_FR.zip fr_FR

# zip the english build folder for release
zip -r TRM_en_US.zip en_US

cd ${current_dir};
