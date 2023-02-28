import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/pages/root_page.dart';

final rootRoutes = [
  ShellRoute(
    builder: (_, __, child) => RootPage(child: child),
    routes: [
      GoRoute(
        path: 'news',
        builder: (_, __) => const Center(child: Text('News Page')),
      ),
      GoRoute(
        path: 'sources',
        builder: (_, __) => const Center(child: Text('News Sources Page')),
      )
    ],
  ),
];
