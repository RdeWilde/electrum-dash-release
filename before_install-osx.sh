#!/bin/bash
set -ev
brew update
brew install cartr/qt4/pyqt@4
pip install --upgrade pip

git clone  https://github.com/trezor/cython-hidapi
(cd cython-hidapi; git pull; git submodule init; git submodule update)
(cd cython-hidapi/; python setup.py build install)

git clone https://github.com/akhavr/python-trezor
(cd python-trezor/ ; sudo python setup.py build install bdist)

pip install pyinstaller
