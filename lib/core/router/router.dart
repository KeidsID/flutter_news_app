import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_routes.dart';
import 'root/root_routes.dart';

final router = GoRouter(
  initialLocation: '/news',
  routerNeglect: true,
  routes: [
    GoRoute(
      path: '/',
      routes: rootRoutes,
      builder: (_, __) =>
          const Scaffold(body: Center(child: Text('Bad Routing'))),
      redirect: (ctx, state) {
        if (state.location == AppRoutes.root) {
          return AppRoutes.news.path;
        }

        return state.fullpath;
      },
    ),
  ],
);
