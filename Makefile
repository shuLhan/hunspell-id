## SPDX-FileCopyrightText: 2022 M. Shulhan <ms@kilabit.info>
## SPDX-License-Identifier: LGPL-3.0-only

.PHONY: install uninstall serve-doc vim-mkspell

## Task to install the program on POSIX based OS, for example
##
##	$ sudo make DESTDIR=/ install
##
install:
	install -dm755 $(DESTDIR)/usr/share/hunspell/
	install -m644 id_ID.dic id_ID.aff $(DESTDIR)/usr/share/hunspell/

	install -dm755 $(DESTDIR)/usr/share/myspell/dicts/
	ln -s /usr/share/hunspell/id_ID.dic $(DESTDIR)/usr/share/myspell/dicts/
	ln -s /usr/share/hunspell/id_ID.aff $(DESTDIR)/usr/share/myspell/dicts/

	install -dm755 $(DESTDIR)/usr/share/vim/vimfiles/spell/
	install -m644 vim/id.utf-8.spl $(DESTDIR)/usr/share/vim/vimfiles/spell/

## Task to uninstall the program, for example
##
##	$ sudo make DESTDIR=/ uninstall
uninstall:
	rm -f $(DESTDIR)/usr/share/vim/vimfiles/spell/id.utf-8.spl
	rm -f $(DESTDIR)/usr/share/myspell/dicts/id_ID.aff
	rm -f $(DESTDIR)/usr/share/myspell/dicts/id_ID.dic
	rm -f $(DESTDIR)/usr/share/hunspell/id_ID.aff
	rm -f $(DESTDIR)/usr/share/hunspell/id_ID.dic

serve-doc:
	ciigo serve doc

vim-mkspell:
	vim -c "mkspell! ./vim/id id_ID | q"
