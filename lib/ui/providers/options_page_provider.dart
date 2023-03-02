import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OptionsPageProvider extends ChangeNotifier {
  late SharedPreferences _prefs;

  OptionsPageProvider(SharedPreferences sharedPrefs) {
    _prefs = sharedPrefs;

    _themeMode = ThemeMode.values[_prefs.getInt(_themeModePrefKey) ?? 0];
  }

  static const _themeModePrefKey = 'app:themeMode';

  late ThemeMode _themeMode;

  ThemeMode get themeMode => _themeMode;

  Future<void> setThemeMode(ThemeMode value) async {
    final themeModeIndex = ThemeMode.values.indexWhere((e) => e == value);

    await _prefs.setInt(_themeModePrefKey, themeModeIndex);
    _themeMode = value;
    notifyListeners();
  }
}
