#!/bin/sh

PACKAGE_NAME=hunspell-id
LIBREOFFICE_EXT=${PACKAGE_NAME}.oxt

( cd src && zip -r9v ../${LIBREOFFICE_EXT} . )
