#!/bin/bash

# Clone necessary repos
git clone git@github.com:nopsc/nolapsc.org.git
cd nolapsc.org
git remote add production git@gitlab.com:nopsc/nolapsc.org.git
cd ..

# Does not need to be pushed to production
git clone git@github.com:nopsc/hugo-palestine-theme.git
git clone git@github.com:nopsc/nopsc_api.git

cd
cd nopsc/volatile
wget https://github.com/spf13/hugo/releases/download/v0.18.1/hugo_0.18.1-64bit.deb
sudo dpkg -i hugo_0.18.1-64bit.deb

cd
cd nopsc/code
git clone https://github.com/letsencrypt/letsencrypt

sudo apt-get install letsencrypt
