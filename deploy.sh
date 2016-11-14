#!/bin/bash

# ssh-agent bash
# ssh-add ~/.ssh/info_nolapsc

# Copy over theme files
rm -rf themes/palestine
rsync -av --progress ../hugo-palestine-theme themes --exclude .git
mv themes/hugo-palestine-theme themes/palestine

# Commit and push website
git add .
git commit -m "$1"
git push production master
git push origin master

# Remove theme and use symbolic link for faster development
rm -rf themes/palestine
ln -s ../../hugo-palestine-theme/ themes/palestine

# Commit and push theme
cd ../hugo-palestine-theme
git add .
git commit -m "$1"
git push origin master

# Commit and deploy api server to heroku
cd ../nopsc_api
git add .
git commit -m "$1"
git push origin master
git push heroku master

cd ../nolapsc.org
