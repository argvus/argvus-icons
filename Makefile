PREFIX ?= /usr
DESTDIR ?=
BRANCH := $(shell git branch --show-current 2>/dev/null || echo "unknown")
REMOTES := $(shell git remote 2>/dev/null || echo "")

.DEFAULT_GOAL := help

.PHONY: help install uninstall validate push push-lease build clean

help:
	@echo "Available targets:"
	@echo "  make build"
	@echo "  make install"
	@echo "  make uninstall"
	@echo "  make validate"

install:
	install -dm755 "$(DESTDIR)$(PREFIX)/share/icons"
	cp -a src/icons/. "$(DESTDIR)$(PREFIX)/share/icons/"

uninstall:
	rm -rf "$(DESTDIR)$(PREFIX)/share/icons/Argvus Icons"
	rm -rf "$(DESTDIR)$(PREFIX)/share/icons/Argvus Dark Icons"
	rm -rf "$(DESTDIR)$(PREFIX)/share/icons/Argvus Light Icons"

validate:
	@tools/validate-icons.sh
	@echo "argvus-icons validation ok"

push:
	@echo "Push normal → branch: $(BRANCH)"
	@for remote in $(REMOTES); do \
		echo "  pushing to $$remote..."; \
		git push $$remote $(BRANCH); \
	done

push-lease:
	@echo "Push --force-with-lease → branch: $(BRANCH)"
	@for remote in $(REMOTES); do \
		echo "  pushing to $$remote..."; \
		git push --force-with-lease $$remote $(BRANCH); \
	done

build:
	@tools/build-local-package.sh

clean:
	rm -rf dist
	rm -f packaging/arch/*.zst packaging/arch/*.tar.gz
