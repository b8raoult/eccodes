
AM_CFLAGS =  @WARN_PEDANTIC@ @WERROR@

noinst_LTLIBRARIES = libtigge_tools.la
libtigge_tools_la_SOURCES = tigge_tools.c tigge_tools.h


bin_PROGRAMS  =  tigge_check tigge_name tigge_accumulations tigge_split

tigge_check_SOURCES =  tigge_check.c \
                       tigge_check.h

tigge_name_SOURCES  =  tigge_name.c
tigge_split_SOURCES =  tigge_split.c
tigge_accumulations_SOURCES      =  tigge_accumulations.c

INCLUDES =  -I$(top_builddir)/src

LDADD = libtigge_tools.la $(top_builddir)/src/libeccodes.la
DEPENDENCIES = $(LDADD)
EXTRA_DIST = CMakeLists.txt
