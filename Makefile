##############################################################################
#
#    file                 : Makefile
#    created              : Mon Dec 11 22:30:53 CET 2000
#    copyright            : (C) 2000 by Eric Espi�                        
#    email                : Eric.Espie@torcs.org   
#    version              : $Id$                                  
#
##############################################################################
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
##############################################################################


# #### The Open Racing Car Simulator ####

ifndef TORCS_BASE

TORCS_BASE = $(shell pwd)
MAKE_DEFAULT = ${TORCS_BASE}/Make-default.mk

-include Make-config

restart:
	@echo "TORCS_BASE = ${TORCS_BASE}" > ${HOME}/.torcs
	@echo "MAKE_DEFAULT = ${MAKE_DEFAULT}" >> ${HOME}/.torcs
	${MAKE} TORCS_BASE=${TORCS_BASE} MAKE_DEFAULT=${MAKE_DEFAULT}

endif

ifndef MAKE_DEFAULT

MAKE_DEFAULT = ${TORCS_BASE}/Make-default.mk

-include Make-config

restart2:
	${MAKE} TORCS_BASE=${TORCS_BASE} MAKE_DEFAULT=${MAKE_DEFAULT}

endif

DATASUBDIRS	= data src

EXPINCDIRS	= src

TOOLSUBDIRS	= src

SUBDIRS		= src


-include ${MAKE_DEFAULT}

Make-config: configure Make-config.in
	rm -f config.status config.log config.cache
	./configure --enable-debug

configure: configure.in aclocal.m4
	rm -f config.status config.log config.cache
	autoconf

aclocal.m4: acinclude.m4
	aclocal

distclean: doc clean
	rm -f config.status config.log config.cache
	rm -f Make-config
	rm -rf ${EXPORTBASE}

cleanconfig: clean
	rm -f config.status config.log config.cache
	rm -f Make-config configure aclocal.m4

doc:
	rm -rf ${DOCBASE}/manual/api/*.html
	mkdir -p ${DOCBASE}/manual/api
	doxygen ${SOURCEBASE}/doc/torcsdoc.conf

uninstall:
	rm -rf ${INSTBASE}
