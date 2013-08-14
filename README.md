Open Science Toolkit
==============================

This toolkit tries to make open science, open (software) projects and open courses as easy and efficient as possible to do and share with others. It provides a collection of scripts, templates, docs, packages and configs for an open, innovative working process on your Linux or Mac pc. It supports the use of open source tools like [zsh](http://www.zsh.org/), Python, R, Libre Office and Git, open formats like csv, svg and png and additionally the open practice from [Open Science Projekt](http://openscience.alpine-geckos.at/).

**Basic functions**
- Scripts: different file conversions (e.g. svg2pdf, odt2pdf,...)
- Aliases: add gitignore, add LICENSE files
- Configs: git and zsh
- Templates: open source software & creative commons licenses, gitignores, coding files
- Git: Hooks (with warning messages)
- Easy installation

**Open Science Projekt functions**

These functions are adapted to an open workflow used for open science, open source software development and open publishing as part of science, courses and projects on the [Open Science Projekt](http://openscience.alpine-geckos.at/). They are not restricted to it, so I think they are quite helpful for any workflow (especially, when you adopt the toolkit to your individuel workflow and needs). 
- Configs: adapted zsh and git configs
- Easy setup of science, project and course repositories
- Templates: github markdown, website
- Git: specific git-hooks

The toolkit works together with these

**SOFTWARE AND PACKAGES**
- [zsh](http://www.zsh.org/): advanced shell
- [Git](http://git-scm.com/): sourcecode and other data versioning software
- [GitHub](https://github.com/): webservice for Git
- [Libre Office](https://www.libreoffice.org/): Open Source Office Suite
- [bookmarks2mediawiki](https://github.com/skasberger/bookmarks2mediawiki) by [skasberger](https://github.com/skasberger): html 2 mediawiki converter (in R)
- [zsh-lovers](https://github.com/grml/zsh-lovers/) by [grml](https://github.com/grml): zsh config
- [licenses](https://github.com/okfn/licenses/) by [okfn](https://github.com/okfn/): information about open definition compatible licenses as json
- [templates](https://github.com/skasberger/templates) by [skasberger](https://github.com/skasberger): code and open source software licenses
- [templates](https://github.com/openscienceASAP/templates) by [openscienceASAP](https://github.com/openscienceASAP): markdown and github templates for openscienceASAP 
- [gitignore](https://github.com/github/gitignore) by [github](https://github.com/github): gitignore files for different software projects and programming languages

**LICENSE**

Our part of the software is licensed under the [MIT License](http://opensource.org/licenses/MIT). All foreign packages or files (in the folder ext/) are licensed as stated from their side.

**[WEBPAGE](http://openscience.alpine-geckos.at/projects/open-science-scripts/)**

## INSTALL

**Prerequisites**

To be able to use this toolkit, you first need to install this packages
Please look at their documentation sites for this.
- [zsh](http://www.zsh.org/): advanced shell
- [Git](http://git-scm.com/): sourcecode and other data versioning software
- [Libre Office](https://www.libreoffice.org/): Open Source Office Suite
The installation of zsh is mandatory. If other packages are missing, the related functions will not work (properly).

**Install**

```shell
# download archive
wget https://github.com/openscienceASAP/openscience-toolkit/archive/master.zip
unzip master.zip

# install
cd openscience-toolkit-master
sh install.sh
```

**Download External Packages**

```shell
sh fetch-ext.sh
```

**Uninstall**

All files created by install will be deleted, not the custom ones.
```shell
sh ~/openscience-toolkit/shell/uninstall.sh
```

## DOCUMENTATION

### Basic functions
#### Git-Hooks
#### Aliases
#### Templates
#### Configs

### openscienceASAP Functions
#### Git-Hooks
#### Aliases
#### Templates
#### Configs

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
