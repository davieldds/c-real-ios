import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

const String _cascadiaMonoLicenseAsset = 'assets/licenses/CascadiaMonoOFL.txt';
const String _nunitoLicenseAsset = 'assets/licenses/NunitoOFL.txt';
const String _constructiveRealArithmeticLicenseAsset =
    'assets/licenses/ConstructiveRealArithmetic.txt';

/// Registers bundled third-party licenses so they appear in Flutter's license page.
void registerAppLicenses() {
  LicenseRegistry.addLicense(
    () => _singleEntryFromAsset(
      packages: const ['CascadiaMono'],
      assetPath: _cascadiaMonoLicenseAsset,
    ),
  );
  LicenseRegistry.addLicense(
    () => _singleEntryFromAsset(
      packages: const ['Nunito'],
      assetPath: _nunitoLicenseAsset,
    ),
  );
  LicenseRegistry.addLicense(
    () => _singleEntryFromAsset(
      packages: const ['Constructive Real Arithmetic'],
      assetPath: _constructiveRealArithmeticLicenseAsset,
    ),
  );
}

Stream<LicenseEntry> _singleEntryFromAsset({
  required List<String> packages,
  required String assetPath,
}) async* {
  final ByteData data = await rootBundle.load(assetPath);
  final Uint8List bytes = data.buffer.asUint8List(
    data.offsetInBytes,
    data.lengthInBytes,
  );
  final String text = _decodeLicenseBytes(bytes);
  yield LicenseEntryWithLineBreaks(packages, text);
}

String _decodeLicenseBytes(Uint8List bytes) {
  try {
    return utf8.decode(bytes);
  } on FormatException {
    // Some upstream license files are published as Latin-1/Windows-1252.
    return latin1.decode(bytes);
  }
}
