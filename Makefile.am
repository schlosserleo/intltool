## Process this file with automake to produce Makefile.in

SUBDIRS = . tests

NULL = 

aclocal_macros = xml-i18n-tools.m4

CLEANFILES =					\
	xml-i18n-toolize			\
	xml-i18n-extract.in			\
	xml-i18n-merge.in			\
	xml-i18n-update.in			\
	xml-i18n-extract			\
	xml-i18n-merge				\
	xml-i18n-prepare			\
	xml-i18n-update				\
	xml-i18n-unicodify			\
	*.gz					\
	$(NULL)

# These are required by xml-i18n-toolize.
pkgdata_DATA =					\
	xml-i18n-extract.in			\
	xml-i18n-merge.in			\
	xml-i18n-update.in			\
	xml-i18n-tools.Makefile.patch		\
	$(NULL)


# This macro file should be visible to Automake's aclocal.
aclocal_DATA = $(aclocal_macros)

# The xml-i18n-tools distributor and installed versions of scripts

bin_SCRIPTS =					\
	xml-i18n-toolize			\
	xml-i18n-update				\
	xml-i18n-merge				\
	xml-i18n-extract			\
	xml-i18n-prepare			\
	xml-i18n-unicodify			\
	$(NULL)

EXTRA_DIST =					\
	$(aclocal_macros)			\
	xml-i18n-toolize.in			\
	xml-i18n-extract.in.in			\
	xml-i18n-merge.in.in			\
	xml-i18n-update.in.in			\
	xml-i18n-prepare.in			\
	xml-i18n-unicodify.in			\
	xml-i18n-tools.spec			\
	$(pkgdata_DATA)				\
	$(NULL)


xml-i18n-extract: xml-i18n-extract.in
	sed -e "s:@XML_I18N_TOOLS_PERL@:$(PERL):;" < $< > $@

xml-i18n-merge: xml-i18n-merge.in
	sed -e "s:@XML_I18N_TOOLS_PERL@:$(PERL):;" < $< > $@

xml-i18n-update: xml-i18n-update.in
	sed -e "s:@XML_I18N_TOOLS_PERL@:$(PERL):;" < $< > $@
