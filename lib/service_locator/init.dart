import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui/providers/options_page_provider.dart';
import '../ui/providers/root_page_provider.dart';

part 'register_state_manager.dart';

/// Get registered depedencies anywhere.
///
/// ```dart
/// locator<DesiredDepedencies>()
/// ```
///
/// `Note`: Make sure to call init() on main() before using locator.
/// ```dart
/// void main() async {
///   await init()
/// }
/// ```
final locator = GetIt.instance;

/// Call this first before using the locator.
Future<void> init() async {
  final prefs = await SharedPreferences.getInstance();

  locator.registerSingleton<SharedPreferences>(prefs);

  _registerStateManager();
}
