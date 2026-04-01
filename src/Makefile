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
	dart pub get -C packages/math_core
	dart pub get -C packages/stddev
	dart pub get -C packages/syntax_tree

test: install FORCE
	flutter analyze
	flutter test

	cd packages/math_core && dart analyze
	cd packages/math_core && dart test

	cd packages/stddev && dart analyze
	cd packages/stddev && dart test

	cd packages/syntax_tree && dart analyze
	cd packages/syntax_tree && dart test

doc: FORCE
	dart pub get
	dart doc .

run:
	flutter run lib/main.dart

stddev:
	mkdir -p build/stddev
	dart compile exe packages/stddev/bin/stddev.dart -o build/stddev/stddev

pack: clean
	mkdir -p dist
	tar --exclude-vcs \
		--exclude='dist' \
		--exclude='build' \
		--exclude='.dart_tool' \
		--exclude='**/.dart_tool' \
		--exclude='**/build' \
		-czf dist/ivs-projekt-2.tar.gz .

clean:
	rm -rf build dist
	find . -type d -name ".dart_tool" -prune -exec rm -rf {} +
	find . -type d -path "*/doc/api" -prune -exec rm -rf {} +
	find . -type d -name ".flutter-plugins-dependencies" -prune -exec rm -rf {} +

FORCE:
