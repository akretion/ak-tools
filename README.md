# <a name="title"></a> Ak-Tools [![Build Status](https://secure.travis-ci.org/akretion/ak-tools.png?branch=master)](http://travis-ci.org/akretion/ak-tools)

## <a name="description"></a> Description

This cookbook includes Akretion base infrasture recipes.
It can be used both with Chef-Solo/Vagrant/Kitchen or Chef-Server

It consists in:

* an automatic apt-get update at the beginning of the server provisionning
* a customizable set of .deb packages for compile-time and run-time dependencies
* some custom bash aliases and scripts
* some executables in the path
* some customizable branding

## Recipes

#### server

To be used in headless server environment


This recipe allows to list distro packages declaratively for installation.
The distro packages that will be installed are the concatenation of
the following arrays of packages:

* apt_packages: meant to be changed in the node or completed within the recipes
* apt_packages_extra: an extra list of packages you can define declaratively in chef-solo attributes
* apt_packages_env: packages you want specifically in some environment
