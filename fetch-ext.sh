#/bin/sh
# 
# Author: Stefan Kasberger
# Date: 26. July 2013
#
# Description: Downloads all external files
#

# prepare
mkdir .tmp
cd .tmp

# download zsh config by grml
mkdir zsh-lovers-grml
cd zsh-lovers-grml
wget https://github.com/grml/zsh-lovers/archive/master.zip
unzip master.zip
mv zsh-lovers-master/* ./
rm -R templates-master
rm master.zip
cd ..

# download bash and zsh config by Stefan Kasberger


# download file templates by Stefan Kasberger (only code & licenses)
mkdir templates-skasberger
cd templates-skasberger
wget https://github.com/skasberger/templates/archive/master.zip
unzip master.zip
mv templates-master/* ./
rm -R templates-master
rm master.zip
cd ..

# download gitignore files by github
mkdir gitignore-github
cd gitignore-github
wget https://github.com/github/gitignore/archive/master.zip
unzip master.zip
mv gitignore-master/* ./
rm -R gitignore-master
rm master.zip
cd ..

# download bookmarks2mediawiki by Stefan Kasberger
mkdir bookmarks2mediawiki-skasberger
cd bookmarks2mediawiki-skasberger
wget https://github.com/skasberger/bookmarks2mediawiki/archive/master.zip
unzip master.zip
mv bookmarks2mediawiki-master/* ./
rm -R bookmarks2mediawiki-master
rm master.zip
cd ..

# download licenses by OKFN
mkdir licenses-okfn
cd licenses-okfn
wget https://github.com/okfn/licenses/archive/master.zip
unzip master.zip
mv licenses-master/* ./
rm -R licenses-master
rm master.zip
cd ..

# download templates by openscienceASAP
mkdir templates-openscienceASAP
cd templates-openscienceASAP
wget https://github.com/openscienceASAP/templates/archive/master.zip
unzip master.zip
mv templates-master/* ./
rm -R templates-master
rm master.zip
cd ..





