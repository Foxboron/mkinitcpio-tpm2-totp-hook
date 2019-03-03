PROGNM ?= mkinitcpio-tpm2-totp-hook
PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
LIBDIR ?= $(PREFIX)/lib

install:
	install -Dm755 initcpio/hooks/tpm2_totp -t $(DESTDIR)$(LIB)/initcpio/hooks
	install -Dm755 initcpio/install/tpm2_totp -t $(DESTDIR)$(LIB)/initcpio/install

clean:
	rm $(DESTDIR)$(LIB)/initcpio/hooks/tpm2_totp
	rm $(DESTDIR)$(LIB)/initcpio/install/tpm2_totp
