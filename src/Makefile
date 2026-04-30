.PHONY: all pack clean test doc serve-doc run stddev help install release FORCE

PLATFORM ?= windows

# Default target: make == make all
all: install test stddev
	@echo "Project build completed (including profiling program)."

help:
	@echo "Available commands:"
	@echo "  make all      - install dependencies, run tests, build stddev profiling executable"
	@echo "  make pack     - create submission archive"
	@echo "  make clean    - remove generated files"
	@echo "  make test     - run math library tests"
	@echo "  make doc        - generate documentation"
	@echo "  make serve-doc  - serve built docs from doc/ with Bun (after make doc)"
	@echo "  make run      - run application"
	@echo "  make stddev   - build stddev profiling executable"
	@echo "  make install  - install dependencies"
	@echo "  make release PLATFORM=[windows/linux]  - build installers"
	@echo "  make test     - analyze and run tests"
	@echo "  make help     - show this help"

install:
	flutter pub get

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
	dartdoc_modern --format vitepress --workspace-docs --output doc/modern
	rm -rf doc/modern/guide/c_real
	cd doc/modern && git checkout -- .vitepress/generated/guide-sidebar.ts
	cd doc/modern && bun install && bun run build
	cp -r doc/modern/.vitepress/dist/. doc/

serve-doc: FORCE
	cd doc && bun run ./serve.ts

run:
	flutter run lib/main.dart

stddev:
	mkdir -p build/stddev
	flutter compile exe packages/stddev/bin/stddev.dart -o build/stddev/stddev

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
	find . -type d -name ".dart_tool" -prune -exec rm -rf {} +
	find . -type d -path "*/doc/api" -prune -exec rm -rf {} +
	find . -type d -name ".flutter-plugins-dependencies" -prune -exec rm -rf {} +

guard-%:
	@if [ -z "$(${*})" ]; then \
		echo "Error: ${*} is required"; \
		exit 1; \
	fi

release: guard-PLATFORM
	@if [ "$(PLATFORM)" = "windows" ]; then \
		fastforge package --platform windows --targets exe,msix; \
	elif [ "$(PLATFORM)" = "linux" ]; then \
		fastforge package --platform linux --targets deb; \
	else \
		echo "make release PLATFORM=windows"; \
		echo "make release PLATFORM=linux"; \
		exit 1; \
	fi

FORCE:
