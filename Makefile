.PHONY: clean distclean xcpretty

rubybindir := $(shell ruby -r bundler -e 'puts Bundler.bundle_path/"bin"')

all: $(rubybindir) bin/swift-spec

bin/swift-spec: src/swift-spec.in bin
	sed "s|@rubybindir@|$(rubybindir)|" $< > $@
	chmod +x $@

bin:
	mkdir $@

clean:
	rm -rf bin

$(rubybindir):
	bundle install --local

distclean: clean
	rm -rf vendor/ruby
