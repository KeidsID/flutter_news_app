import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ui/providers/options_page_provider.dart';
import '../ui/providers/root_page_provider.dart';

part 'regis_state_manager.dart';

/// Get registered depedencies anywhere.
/// 
/// ```dart
/// locator<DesiredDepedencies>()
/// ```
final locator = GetIt.instance;

/// Call this first before using the locator.
Future<void> init() async {
  _regisStateManager();

  final prefs = await SharedPreferences.getInstance();

  locator.registerSingleton(prefs);
}
