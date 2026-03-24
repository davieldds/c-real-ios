.PHONY: help dev test doc install stddev-compile FORCE

help:
	@echo "Available commands:"
	@echo "dev: run dev build"
	@echo "test: run tests"
	@echo "doc: generate documentation"
	@echo "install: run pub get for app and local packages"
	@echo "stddev-compile: build stddev CLI executable"

dev:
	flutter analyze
	flutter test
	flutter run lib/main.dart

test: FORCE
	flutter test

doc: FORCE
	dart pub get
	dart doc .

install:
	flutter pub get
	dart pub get -C packages/math_core
	dart pub get -C packages/stddev

stddev-compile:
	mkdir -p build/stddev
	dart compile exe packages/stddev/bin/stddev.dart -o build/stddev/stddev.exe
