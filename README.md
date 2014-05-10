# <a name="title"></a> Ak-Tools [![Build Status](https://secure.travis-ci.org/akretion/ak-tools.png?branch=master)](http://travis-ci.org/akretion/ak-tools)

## <a name="description"></a> Description

This cookbook includes Akretion base infrasture recipes.
It can be used both with Chef-Solo/Vagrant/Kitchen or Chef-Server

It consists in:

* an automatic apt-get update at the beginning of the server provisionning
* a customizable set of .deb packages for compile-time and run-time dependencies
* a customizable set of global python pip packages
* some custom bash aliases and scripts
* some executables in the path
* some customizable branding

## Recipes

#### server

To be used in headless server environment
