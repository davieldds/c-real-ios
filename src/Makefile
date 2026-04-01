.PHONY: all pack clean test doc run stddev help install FORCE

# Default target: make == make all
all: install test stddev
	@echo "Project build completed (including profiling program)."

help:
	@echo "Available commands:"
	@echo "  make all      - install dependencies, run tests, build stddev profiling executable"
	@echo "  make pack     - create submission archive"
	@echo "  make clean    - remove generated files"
	@echo "  make test     - run math library tests"
	@echo "  make doc      - generate documentation"
	@echo "  make run      - run application"
	@echo "  make stddev   - build stddev profiling executable"
	@echo "  make install  - install dependencies"
	@echo "  make test     - analyze and run tests"
	@echo "  make help     - show this help"

install:
	flutter pub get
	flutter pub get -C packages/math_core
	flutter pub get -C packages/stddev
	flutter pub get -C packages/syntax_tree

test: install FORCE
	flutter analyze
	flutter test

	cd packages/math_core && flutter analyze
	cd packages/math_core && flutter test

	cd packages/stddev && flutter analyze
	cd packages/stddev && flutter test

	cd packages/syntax_tree && flutter analyze
	cd packages/syntax_tree && flutter test

doc: FORCE
	flutter pub get
	flutter doc .

run:
	flutter run lib/main.flutter

stddev:
	mkdir -p build/stddev
	flutter compile exe packages/stddev/bin/stddev.flutter -o build/stddev/stddev

pack: clean
	mkdir -p dist
	tar --exclude-vcs \
		--exclude='dist' \
		--exclude='build' \
		--exclude='.flutter_tool' \
		--exclude='**/.flutter_tool' \
		--exclude='**/build' \
		-czf dist/ivs-projekt-2.tar.gz .

clean:
	rm -rf build dist
	find . -type d -name ".flutter_tool" -prune -exec rm -rf {} +
	find . -type d -name "doc" -prune -exec rm -rf {} +
	find . -type d -name ".flutter-plugins-dependencies" -prune -exec rm -rf {} +

FORCE:
