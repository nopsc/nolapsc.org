#!/bin/bash

rm -rf themes/palestine
cp -r ../hugo-palestine-theme themes/palestine
git add .
git commit -m "$1"
git push production master
