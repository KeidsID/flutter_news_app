import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../ui/pages/root_page.dart';
import '../../../ui/providers/root_page_provider.dart';

final rootRoutes = [
  ShellRoute(
    builder: (ctx, state, child) {
      final rootNavIndex = state.location == '/news' ? 0 : 1;

      Provider.of<RootPageProvider>(ctx).setNavigationIndex(rootNavIndex);

      return RootPage(child: child);
    },
    routes: [
      GoRoute(
        path: 'news',
        builder: (ctx, _) {
          Provider.of<RootPageProvider>(ctx).setNavigationIndex(0);

          return const Center(child: Text('News Page'));
        },
      ),
      GoRoute(
        path: 'sources',
        builder: (ctx, _) {
          Provider.of<RootPageProvider>(ctx).setNavigationIndex(1);

          return const Center(child: Text('News Sources Page'));
        },
      )
    ],
  ),
];
