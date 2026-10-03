
NAME = detok85
SOURCE = $(NAME).py

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

PHONY: all
all: $(SOURCE)

install: all
	@mkdir -p $(BINDIR)
	@install -v -o root -m 755 $(SOURCE) $(BINDIR)/$(NAME)

PHONY: uninstall
uninstall:
	@rm -v $(BINDIR)/$(NAME)
