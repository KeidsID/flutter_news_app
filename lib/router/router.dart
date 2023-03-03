import 'package:core/core.dart';
import 'package:go_router/go_router.dart';

import 'root/root_routes.dart';

final router = GoRouter(
  initialLocation: '/news',
  routerNeglect: true,
  errorBuilder: (_, __) => ErrorPages.invariant.notFound,
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => ErrorPages.invariant.unprocessableEntity(
        'Make sure you navigate using the available UI',
      ),
      redirect: (_, state) {
        if (state.location == AppRoutes.root) {
          return AppRoutes.news.path;
        }

        return state.fullpath;
      },
      routes: rootRoutes,
    ),
  ],
);
