SUBDIRS = cases results

TESTS = selftest

EXTRA_DIST = selftest.pl.in

selftest: selftest.pl
	cp $< $@ && chmod +x $@

CLEANFILES = selftest selftest.pl spacepreserve/merge6.xml
