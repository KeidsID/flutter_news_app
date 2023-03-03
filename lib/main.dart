import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'service_locator/init.dart' as di;
import 'router/router.dart';
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
          theme: AppThemes.theme,
          darkTheme: AppThemes.darkTheme,
          themeMode: prov.themeMode,
          routerConfig: router,
        ),
      ),
    );
  }
}
