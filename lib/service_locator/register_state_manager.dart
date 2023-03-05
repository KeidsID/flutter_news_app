part of 'init.dart';

void _registerStateManager() {
  locator.registerFactory(() => RootPageProvider());
  locator.registerFactory(() {
    return OptionsPageProvider(locator<SharedPreferences>());
  });
}
