## Process this file with automake to produce Makefile.in

SUBDIRS = tests doc doc-i18n-tool

NULL = 

aclocal_macros = intltool.m4 xml-i18n-tools.m4

CLEANFILES =					\
	intltoolize				\
	xml-i18n-toolize			\
	intltool-extract.in			\
	intltool-merge.in			\
	intltool-update.in			\
	intltool-extract			\
	intltool-merge				\
	intltool-prepare			\
	intltool-update				\
	*.gz					\
	$(NULL)

# These are required by intltoolize and xml-i18n-toolize.
pkgdata_DATA =					\
	Makefile.in.in				\
	intltool-extract.in			\
	intltool-merge.in			\
	intltool-update.in			\
	$(NULL)


# This macro file should be visible to Automake's aclocal.
aclocal_DATA = $(aclocal_macros)

# The intltool distributor and installed versions of scripts

bin_SCRIPTS =					\
	intltoolize				\
	xml-i18n-toolize			\
	intltool-update				\
	intltool-merge				\
	intltool-extract			\
	intltool-prepare			\
	$(NULL)

EXTRA_DIST =					\
	$(aclocal_macros)			\
	intltoolize.in				\
	xml-i18n-toolize.in			\
	intltool-extract.in.in			\
	intltool-merge.in.in			\
	intltool-update.in.in			\
	intltool-prepare.in			\
	intltool.spec.in			\
	$(pkgdata_DATA)				\
	$(NULL)

dist-hook:
	cp intltool.spec $(distdir)

%: %.in Makefile
	sed -e "s:@INTLTOOL_PERL@:$(PERL):g" \
	    -e "s:@INTLTOOL_ICONV@:$(ICONV):g" \
	    -e "s:@INTLTOOL_MSGFMT@:$(MSGFMT):g" \
	    -e "s:@INTLTOOL_MSGMERGE@:$(MSGMERGE):g" \
	    -e "s:@INTLTOOL_XGETTEXT@:$(XGETTEXT):g" \
	    -e "s:@INTLTOOL_EXTRACT@:$(bindir)/intltool-extract:g" \
	    < $< > $@
