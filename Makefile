## SPDX-FileCopyrightText: 2022 M. Shulhan <ms@kilabit.info>
## SPDX-License-Identifier: LGPL-3.0-only

.PHONY: vim-mkspell

vim-mkspell:
	vim -c "mkspell! ./vim/id id_ID | q"
