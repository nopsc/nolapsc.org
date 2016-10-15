#!/bin/bash

rm -rf themes/palestine
rsync -av --progress ../hugo-palestine-theme themes --exclude .git
mv themes/hugo-palestine-theme themes/palestine
git add .
git commit -m "$1"
git push production master
