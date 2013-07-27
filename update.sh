#/bin/sh
# 
# Author: Stefan Kasberger
# Date: 26. July 2013
#
# Description: Updates all downloaded files to the actual status
#

cd ~/.openscience-scripts/

# download zsh config by grml
if [ ! -d ~/.openscience-scripts/shell/configs/grml]; then
	mkdir ~/.openscience-scripts/ext/zsh-config-grml
fi
cd ~/.openscience-scripts/ext/zsh-config-grml
wget -O .zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
wget -O .zshrc.local  http://git.grml.org/f/grml-etc-core/etc/skel/.zshrc
cd ~/.openscience-scripts/

# download bash and zsh config by Stefan Kasberger


# download file templates by Stefan Kasberger (only code & licenses)
mkdir ~/.openscience-scripts/ext/templates-skasberger
mkdir ~/.openscience-scripts/.tmp
cd ~/.openscience-scripts/.tmp
wget https://github.com/skasberger/templates/archive/master.zip
unzip master.zip
mv ~/.openscience-scripts/.tmp/templates-master/code/ ~/.openscience-scripts/ext/templates-skasberger
mv ~/.openscience-scripts/.tmp/templates-master/licenses ~/.openscience-scripts/ext/templates-skasberger
cd ~/.openscience-scripts/
rm -R .tmp

# download gitignore files by github
mkdir ~/.openscience-scripts/ext/gitignore-github
mkdir ~/.openscience-scripts/.tmp
cd ~/.openscience-scripts/.tmp
wget https://github.com/github/gitignore/archive/master.zip
unzip master.zip
mv ~/.openscience-scripts/.tmp/gitignore-master/* ~/.openscience-scripts/ext/gitignore-github
cd ~/.openscience-scripts/
rm -R .tmp

# download bookmarks2mediawiki by Stefan Kasberger
mkdir ~/.openscience-scripts/ext/bookmarks2mediawiki-skasberger
mkdir ~/.openscience-scripts/.tmp
cd ~/.openscience-scripts/.tmp
wget https://github.com/skasberger/bookmarks2mediawiki/archive/master.zip
unzip master.zip
mv ~/.openscience-scripts/.tmp/bookmarks2mediawiki-master/* ~/.openscience-scripts/ext/bookmarks2mediawiki-skasberger
cd ~/.openscience-scripts/
rm -R .tmp

# download licenses by OKFN
mkdir ~/.openscience-scripts/ext/licenses-okfn
mkdir ~/.openscience-scripts/.tmp
cd ~/.openscience-scripts/.tmp
wget https://github.com/okfn/licenses/archive/master.zip
unzip master.zip
mv ~/.openscience-scripts/.tmp/licenses-master/* ~/.openscience-scripts/ext/licenses-okfn
cd ~/.openscience-scripts/
rm -R .tmp

# download templates by openscienceASAP
mkdir ~/.openscience-scripts/ext/templates-openscienceASAP
mkdir ~/.openscience-scripts/.tmp
cd ~/.openscience-scripts/.tmp
wget https://github.com/openscienceASAP/templates/archive/master.zip
unzip master.zip
mv ~/.openscience-scripts/.tmp/templates-master/* ~/.openscience-scripts/ext/templates-openscienceASAP
cd ~/.openscience-scripts/
rm -R .tmp








