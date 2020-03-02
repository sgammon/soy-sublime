
#
# soy-syntax makefile
#


QUIET ?= yes
VERBOSE ?= no

USER ?= $(shell whoami)
TARGET ?= /Users/$(USER)/Library/Application\ Support/Sublime\ Text\ 3/Packages/Soy

ifeq ($(VERBOSE),yes)
_RULE =
POSIX_FLAGS ?= -v
else
ifeq ($(QUIET),yes)
_RULE ?= @
endif
endif

SOURCES ?= Preferences/ Snippets/ Syntaxes/ info.plist

all:
	$(info Installing package...)
	$(_RULE)mkdir -p $(TARGET) && cp -fr $(POSIX_FLAGS) $(SOURCES) $(TARGET)/
	$(_RULE)echo "Package installed."


.PHONY: all

