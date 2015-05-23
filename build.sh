#!/bin/sh

PACKAGE_NAME=hunspell-id
LIBREOFFICE_EXT=${PACKAGE_NAME}.oxt

( cd libreoffice-extension && zip -r9v ../${LIBREOFFICE_EXT} . )
