#/bin/sh
# 
# Author: Stefan Kasberger
# Date: 26. July 2013
#
# Description: Downloads and extracts repository
#

# prepare
mkdir .tmp
cd .tmp

# download archive
wget https://github.com/openscienceASAP/openscience-toolkit/archive/master.zip
unzip master.zip

# install
cd openscience-toolkit-master
sh install.sh

# remove
rm -R .tmp
