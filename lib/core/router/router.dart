import 'package:go_router/go_router.dart';

import '../errors/4xx/error_400_page.dart';
import '../errors/4xx/error_404_page.dart';
import '../utils/app_routes.dart';
import 'root/root_routes.dart';

final router = GoRouter(
  initialLocation: '/news',
  routerNeglect: true,
  errorBuilder: (_, __) => const Error404Page(),
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const Error400Page(
        msg: 'Make sure you navigate using the available UI',
      ),
      redirect: (ctx, state) {
        if (state.location == AppRoutes.root) {
          return AppRoutes.news.path;
        }

        return state.fullpath;
      },
      routes: rootRoutes,
    ),
  ],
);
