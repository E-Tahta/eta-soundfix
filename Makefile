# Makefile

all: build

build:
	@echo "Nothing to build."

install:
	# Installing executables
	mkdir -p $(DESTDIR)/usr/share/eta-sound-fixer
        mkdir -p $(DESTDIR)/usr/bin
	cp -a eta_sound_fixer $(DESTDIR)/usr/share/eta-sound-fixer/
	ln -s $(DESTDIR)/usr/share/eta-sound-fixer/eta_sound_fixer $(DESTDIR)/usr/bin/eta_sound_fixer 

	# Installing desktop files
	mkdir -p $(DESTDIR)/etc/xdg/autostart
	cp -a eta-sound-fixer.desktop $(DESTDIR)/etc/xdg/autostart

uninstall:
	# Uninstalling executables
	rm -rf $(DESTDIR)/usr/bin/eta-sound-fixer
	rmdir --ignore-fail-on-non-empty $(DESTDIR)/usr/share/eta-sound-fixer > /dev/null 2>&1 || true

	# Uninstalling desktop files
	rm -f $(DESTDIR)/etc/xdg/autostart/eta-sound-fixer.desktop
clean:

reinstall: uninstall install

