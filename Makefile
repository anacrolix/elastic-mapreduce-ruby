d=/usr/lib/elastic-mapreduce-ruby-cli

build:

install:
	mkdir -p "${DESTDIR}${d}"
	find * -maxdepth 0 ! -name debian ! -name execer ! -name Makefile -exec cp -r {} '${DESTDIR}${d}' \;
	mkdir -p "${DESTDIR}/usr/bin"
	cp execer '${DESTDIR}/usr/bin/elastic-mapreduce'
