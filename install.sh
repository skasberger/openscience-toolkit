#/bin/sh
# 
# Author: Stefan Kasberger
# Date: 25. July 2013
#
# Description: Installs the files in the open science script folder inside home
#

# create directories
mkdir ~/openscience-scripts/
mkdir ~/openscience-scripts/scripts
mkdir ~/openscience-scripts/scripts/install
mkdir ~/openscience-scripts/scripts/git-hooks
mkdir ~/openscience-scripts/configs
mkdir ~/openscience-scripts/configs/git
mkdir ~/openscience-scripts/configs/shell
mkdir ~/openscience-scripts/templates
mkdir ~/openscience-scripts/doc
mkdir ~/openscience-scripts/usr
mkdir ~/openscience-scripts/ext

# copy deploy scripts
cp install.sh ~/openscience-scripts/scripts/install
cp update.sh ~/openscience-scripts/scripts/install
cp uninstall.sh ~/openscience-scripts/scripts/install

# copy zsh config


# copy git config


# download all actual external files
cd ~/.openscience-scripts/
sh update.sh

