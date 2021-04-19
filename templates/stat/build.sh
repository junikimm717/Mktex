#!/bin/bash

case $OSTYPE in
    linux*)
        pythontex $1
    ;;
    darwin*)
        # stupid darwin defaulting to python 2
        /usr/local/texlive/2021/texmf-dist/scripts/pythontex/pythontex3.py $1
    ;;
esac
