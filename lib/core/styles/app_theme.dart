import 'package:flutter/material.dart';

import 'app_text_theme.dart';

const appPrimaryColor = Color(0xFF6B38FB);
const appDarkPrimaryColor = Color(0xFFA45ED4);

final appLightTheme = ThemeData(
  brightness: Brightness.light,
  colorSchemeSeed: appPrimaryColor,
  useMaterial3: true,
  textTheme: appLightTextTheme,
);

final appDarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorSchemeSeed: appDarkPrimaryColor,
  useMaterial3: true,
  textTheme: appDarkTextTheme,
);
