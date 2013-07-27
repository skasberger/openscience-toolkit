Open Science Scripts
==============================

## DESCRIPTION
Collection of scripts (Shell, R, Python), configs (Shell, Git) and templates (Licenses, Libre Office, code) to automatize an open workflow for science, projects and courses on Linux and Mac. 

The scripts should make an open scientific workflow easier and automatize common, reoccuring actions as much as possible. The script works together with following tools and services
- [zsh](http://www.zsh.org/)
- [Git](http://git-scm.com/) + [GitHub](https://github.com/)
- [Libre Office](https://www.libreoffice.org/)

Our part of the software is licensed under the [MIT License](http://opensource.org/licenses/MIT). All foreign packages or files (in the folder ext/) are licensed as stated from their side.

**[WEBPAGE](http://openscience.alpine-geckos.at/projects/open-science-scripts/)**

## INSTALL

Install:
```shell
# download and extract repository
wget https://github.com/openscienceASAP/openscience-scripts/archive/master.zip
unzip master.zip

# install
cd openscience-scripts-master
sh install.sh
```

Update all exteranl files and packages:
```shell
sh ~/.openscience-scripts/shell/update.sh
```

Uninstall:
```shell
sh ~/.openscience-scripts/shell/uninstall.sh
```

## DOCUMENTATION
For the full documentation, look at ```doc/openscience-script.org```

## ToDo
- saubere Versionsschritte: änderungen an neuen files, die in den openscience ordner installiert werden mitdokumentieren und bei uninstall wieder löschen => es sollen keine dateien gelöscht werden, die nicht vom repo installiert wurden, aber alle die davon kamen; auf das löschen im uninstall script hinweisen
- check, where to create folder: pre create everything or at the point where the content will be filled?; how is it about overwriting existing files (good, bad?)
- change tmp folder to .tmp
- document neccessary pre-installed packages to work with the script: git, zsh, 
- the folder should work in custom folder locations
- Error messages für jeden relevanten Schritt schreiben

<!--
## CHANGELOG
### Version 0.1 - yyyy-mm-dd
initial commit
- create install.sh to install the software in ```~/.open-science-scripts/```
- create update.sh for update of all external files
- create uninstall.sh for deletion of all create files

## SOURCES
-->
