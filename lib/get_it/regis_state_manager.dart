part of 'init.dart';

void _regisStateManager() {
  locator.registerFactory(() => RootPageProvider());
  locator.registerFactory(() {
    return OptionsPageProvider(locator<SharedPreferences>());
  });
}
