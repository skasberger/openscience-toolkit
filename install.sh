#/bin/sh
# 
# Author: Stefan Kasberger
# Date: 25. July 2013
#
# Description: Installs the files in the open science script folder inside home
#

# create directories
mkdir ~/openscience-toolkit/
mkdir ~/openscience-toolkit/scripts
mkdir ~/openscience-toolkit/scripts/install
mkdir ~/openscience-toolkit/scripts/git-hooks
mkdir ~/openscience-toolkit/configs
mkdir ~/openscience-toolkit/configs/git
mkdir ~/openscience-toolkit/configs/shell
mkdir ~/openscience-toolkit/templates
mkdir ~/openscience-toolkit/doc
mkdir ~/openscience-toolkit/usr
mkdir ~/openscience-toolkit/ext

# copy deploy scripts
cp install.sh ~/openscience-toolkit/scripts/install
cp uninstall.sh ~/openscience-toolkit/scripts/install
cp update.sh ~/openscience-toolkit/scripts/install


# copy zsh config


# copy git config


# copy external packages
cp -R ext/ ~/openscience-toolkit
