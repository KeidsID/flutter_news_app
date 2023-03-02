import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/router/router.dart';
import 'core/styles/app_theme.dart';
import 'core/utils/constants.dart';
import 'get_it/init.dart' as di;
import 'ui/providers/options_page_provider.dart';
import 'ui/providers/root_page_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: di.locator<RootPageProvider>()),
        ChangeNotifierProvider.value(value: di.locator<OptionsPageProvider>()),
      ],
      child: Consumer<OptionsPageProvider>(
        builder: (_, prov, __) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: appName,
          theme: appLightTheme,
          darkTheme: appDarkTheme,
          themeMode: prov.themeMode,
          routerConfig: router,
        ),
      ),
    );
  }
}
