.PHONY: help dev FORCE test FORCE doc

help:
	@echo "Available commands:"
	@echo "dev: run dev build"
	@echo "test: run tests"
	@echo "doc: generate documentation"

dev:
	flutter analyze
	flutter test
	flutter run lib/main.dart

test: FORCE
	flutter test

doc: FORCE
	dart pub get
	dart doc .
