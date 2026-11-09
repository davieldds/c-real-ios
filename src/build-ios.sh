#!/usr/bin/env bash
set -euo pipefail

# Build script for C-Real iOS IPA (LiveContainer compatible)
# Requirements: macOS with Xcode command line tools and Flutter SDK installed

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "==> Resolving Flutter dependencies..."
flutter pub get

echo "==> Building iOS release bundle (unsigned for LiveContainer)..."
flutter build ios --release --no-codesign

echo "==> Packaging IPA into dist/C-Real.ipa..."
mkdir -p dist/Payload
cp -R build/ios/iphoneos/Runner.app dist/Payload/

cd dist
rm -f C-Real.ipa
zip -r -y C-Real.ipa Payload
rm -rf Payload

echo "==> Build complete! Output located at: $SCRIPT_DIR/dist/C-Real.ipa"
echo "==> You can now transfer C-Real.ipa to your iPhone 15 and open it in LiveContainer."
