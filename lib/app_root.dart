import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:newscastify/router/router.dart';
import 'package:provider/provider.dart';

import 'ui/providers/options_page_provider.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: AppThemes.theme,
      darkTheme: AppThemes.darkTheme,
      themeMode: Provider.of<OptionsPageProvider>(context).themeMode,
      routerConfig: router,
    );
  }
}
