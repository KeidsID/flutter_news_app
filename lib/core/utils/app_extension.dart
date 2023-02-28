import 'package:flutter/material.dart';

extension CommonCtx on BuildContext {
  /// Check current theme by Theme.brightness.
  bool get isDarkMode {
    final brightness = Theme.of(this).brightness;

    return brightness == Brightness.dark;
  }

  /// The size of the media in logical pixels (e.g, the size of the screen).
  Size get screenSize => MediaQuery.of(this).size;

  /// Current App TextTheme.
  TextTheme get textTheme => Theme.of(this).textTheme;
}
