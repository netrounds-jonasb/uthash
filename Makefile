all: build
	ninja -C build
.PHONY: all

build:
	meson build

clean:
	ninja -C build clean
PHONY: clean

dist-clean:
	rm -rf build/
PHONY: dist-clean

install: build
	ninja -C build install
.PHONY: install

check: build
	meson test -C build
.PHONY: check
