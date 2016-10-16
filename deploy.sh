#!/bin/bash

# Copy over theme files
rm -rf themes/palestine
rsync -av --progress ../hugo-palestine-theme themes --exclude .git
mv themes/hugo-palestine-theme themes/palestine

# Commit and push website
git add .
git commit -m "$1"
git push production master

# Remove theme and use symbolic link for faster development
rm -rf themes/palestine
ln -s ../../hugo-palestine-theme/ themes/palestine

# Commit and push theme
cd ../hugo-palestine-theme
git add .
git commit -m "$1"
git push origin master

cd ../nolapsc.org
