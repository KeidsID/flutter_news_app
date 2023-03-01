import 'package:flutter/material.dart';
import 'package:newscastify/ui/providers/root_page_provider.dart';
import 'package:provider/provider.dart';

import 'core/router/router.dart';
import 'core/styles/app_theme.dart';
import 'core/utils/constants.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: RootPageProvider(0)),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: appName,
        theme: appLightTheme,
        darkTheme: appDarkTheme,
        themeMode: ThemeMode.system,
        routerConfig: router,
      ),
    );
  }
}
