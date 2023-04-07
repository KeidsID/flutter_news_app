import 'package:core/core.dart';
import 'package:go_router/go_router.dart';

import 'routes/routes.dart';

final router = GoRouter(
  initialLocation: '/news',
  errorBuilder: (_, __) => ErrorPages.invariant.notFound(
    msg: "Make sure you didn't type the URL path incorrectly.",
  ),
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => ErrorPages.invariant.unprocessableEntity(),
      redirect: (_, state) {
        if (state.location == AppRoutes.root) {
          return AppRoutes.news.path;
        }

        return state.fullpath;
      },
    ),
    ...routes,
  ],
);
