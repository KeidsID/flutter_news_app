import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_root.dart';
import 'service_locator/init.dart' as sl;
import 'ui/providers/options_page_provider.dart';
import 'ui/providers/root_page_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await sl.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: sl.locator<RootPageProvider>()),
      ChangeNotifierProvider.value(value: sl.locator<OptionsPageProvider>()),
    ],
    child: const AppRoot(),
  ));
}
