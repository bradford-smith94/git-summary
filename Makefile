# Bradford Smith
# Makefile for git-summary
# 07/19/2017
################################################################################

prefix=/usr/local

PRG=git-summary
RM=rm -f

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(PRG) $(prefix)/bin

uninstall:
	test -d $(prefix)/bin && \
		cd $(prefix)/bin && \
		$(RM) $(PRG)
