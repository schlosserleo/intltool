SUBDIRS = cases results

EXTRA_DIST = selftest.pl.in

TESTS=selftest

selftest: selftest.pl
	cp $< $@
	chmod +x $@

