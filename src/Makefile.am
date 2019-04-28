bin_SCRIPTS = swift-spec
EXTRA_DIST = swift-spec.in
CLEANFILES = $(bin_SCRIPTS)

swift-spec: swift-spec.in
	sed "s|@xcpretty@|$(XCPRETTY)|" $< > $@
