.PHONY: all pack clean test doc serve-doc run stddev help install release build FORCE

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
ifeq ($(PLATFORM),windows)
	dart compile exe packages/stddev/bin/stddev.dart
else ifeq ($(PLATFORM),linux)
	dart compile exe packages/stddev/bin/stddev.dart -o ./packages/stddev/bin/stddev
else
	@echo "Invalid PLATFORM: $(PLATFORM)"
	@echo "Use: make stddev PLATFORM=windows"
	@echo "Use: make stddev PLATFORM=linux"
	@exit 1
endif

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

release:
ifeq ($(PLATFORM),windows)
	fastforge package --platform windows --targets exe,msix
else ifeq ($(PLATFORM),linux)
	fastforge package --platform linux --targets deb
else
	@echo "Invalid PLATFORM: $(PLATFORM)"
	@echo "Use: make release PLATFORM=windows"
	@echo "Use: make release PLATFORM=linux"
	@exit 1
endif

build: install stddev
ifeq ($(PLATFORM),windows)
	flutter build windows --release
	cmd /C "move /Y .\packages\stddev\bin\stddev.exe .\build\windows\x64\runner\Release"
	cmd /C "move /Y .\windows\packaging\exe\remove_app.reg .\build\windows\x64\runner\Release"
else ifeq ($(PLATFORM),linux)
	flutter build linux --release
	mv ./packages/stddev/bin/stddev ./build/linux/x64/release/bundle
else
	@echo "Invalid PLATFORM: $(PLATFORM)"
	@echo "Use: make build PLATFORM=windows"
	@echo "Use: make build PLATFORM=linux"
	@exit 1
endif

FORCE:
