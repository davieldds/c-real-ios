import 'dart:async';
import 'dart:convert';

import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_keyboard/math_keyboard.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syntax_tree/evaluation_result.dart';
import 'package:syntax_tree/syntax_tree.dart';
// ignore: implementation_imports
import 'package:math_keyboard/src/foundation/node.dart';

import 'compact_panel_view.dart';
import 'calculator_page_constants.dart';
import 'calculator_tutorial.dart';
import '../../models/history_entry.dart';
import '../../utils/compute/evaluate_isolate.dart';
import '../../utils/parsing/custom_tex_parser.dart';
import '../../widgets/display/calculator_display.dart';
import '../../widgets/layout/calculator_app_bar.dart';
import '../../widgets/layout/calculator_compact_panel.dart';
import '../../widgets/layout/calculator_split_panel.dart';
import '../../widgets/panels/calculator_function_pad.dart';
import '../../widgets/panels/calculator_history_panel.dart';

part 'calculator_page_state.dart';
part 'calculator_page_persistence.dart';
part 'calculator_page_ui.dart';

/// Callback used to update the app theme seed from brand title taps.
typedef ThemeSeedChanged = void Function(Color color, {bool monochrome});

/// Main calculator screen containing the expression field, result bar,
/// history panel, function pad, and app menu.
class CalculatorPage extends StatefulWidget {
  /// Creates the main calculator page.
  const CalculatorPage({
    super.key,
    required this.title,
    required this.onThemeSeedChanged,
  });

  /// Title displayed in the app bar and dialog metadata.
  final String title;

  /// Receives updates for selected title letter theme seeds.
  final ThemeSeedChanged onThemeSeedChanged;

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}
