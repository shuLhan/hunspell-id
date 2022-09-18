#!/bin/sh
## SPDX-FileCopyrightText: 2015 hunspell-id Authors
## SPDX-License-Identifier: LGPL-3.0-only

PACKAGE_NAME=hunspell-id
LIBREOFFICE_EXT=${PACKAGE_NAME}.oxt

( cd libreoffice-extension && zip -r9v ../${LIBREOFFICE_EXT} . )
