#!/bin/bash
# Copyright (c) 2018 Mihails Šilovs
# V 0.1.0.
# OS: WSL

# install an isolated environment for Python
mkdir mnem
cd mnem
curl -Os https://pypi.python.org/packages/source/v/virtualenv/virtualenv-15.0.1.tar.gz
tar xzf virtualenv-15.0.1.tar.gz 
cd virtualenv-15.0.1
virtualenv venv
. venv/bin/activate
# establish an isolated environment for mpn
pip install nodeenv

nodeenv nenv
. nenv/bin/activate
# install packages for npm
npm install -g bip39@2.3.0

# associate two environment
nodeenv --python-virtualenv

cd ..
rm  virtualenv-15.0.1.tar.gz




