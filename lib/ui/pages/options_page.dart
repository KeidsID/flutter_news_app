import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../providers/options_page_provider.dart';
import '../providers/root_page_provider.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer<RootPageProvider>(builder: (context, prov, _) {
          return IconButton(
            onPressed: () {
              final path = (prov.navigationIndex == 0)
                  ? AppRoutes.news.path
                  : AppRoutes.sources;

              context.go(path);
            },
            icon: const Icon(Icons.arrow_back),
          );
        }),
        title: const Text(appName),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              (context.isDarkMode) ? Icons.dark_mode : Icons.light_mode,
            ),
            title: const Text('App Theme'),
            trailing: Consumer<OptionsPageProvider>(
              builder: (_, prov, __) => DropdownButton<ThemeMode>(
                value: prov.themeMode,
                items: const [
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text('Light'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text('Dark'),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.system,
                    child: Text('Sync with Device'),
                  ),
                ],
                onChanged: (value) {
                  prov.setThemeMode(value!);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
