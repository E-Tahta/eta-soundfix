# Makefile

all: install

install:
	# Installing executables
	mkdir -p $(DESTDIR)/usr/bin
	cp -fr eta_sound_fixer $(DESTDIR)/usr/bin/ 

	# Installing desktop files
	mkdir -p $(DESTDIR)/etc/xdg/autostart
	cp -fr eta-sound-fixer.desktop $(DESTDIR)/etc/xdg/autostart

uninstall:
	# Uninstalling executables
	rm -rf $(DESTDIR)/usr/bin/eta_sound_fixer

	# Uninstalling desktop files
	rm -rf $(DESTDIR)/etc/xdg/autostart/eta-sound-fixer.desktop

.PHONY: install uninstall

