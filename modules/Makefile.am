## Process this file with automake to produce Makefile.in

NULL = 

perl_MODULES =					\
	XML/Parser/Style/OrigTree.pm		\
	$(NULL)

EXTRA_DIST =					\
	$(perl_MODULES)				\
	$(NULL)

install:
	$(top_srcdir)/mkinstalldirs $(datadir)/intltool/XML/Parser/Style
	cp XML/Parser/Style/OrigTree.pm $(datadir)/intltool/XML/Parser/Style
