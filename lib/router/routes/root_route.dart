import 'package:core/common/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/data/dummy_news.dart';
import 'package:news/ui/pages/news_page.dart';
import 'package:provider/provider.dart';

import '../../ui/pages/root_page.dart';
import '../../ui/providers/root_page_provider.dart';

final rootRoute = ShellRoute(
  builder: (ctx, state, child) {
    final rootNavIndex = state.location == '/news' ? 0 : 1;

    Provider.of<RootPageProvider>(
      ctx,
      listen: false,
    ).setNavigationIndex(rootNavIndex);

    return RootPage(child: child);
  },
  routes: [
    GoRoute(
      path: '/news',
      pageBuilder: (ctx, state) => CustomTransitionPage(
        key: state.pageKey,
        child: Container(
          color: ctx.theme.scaffoldBackgroundColor,
          child: NewsPage(dummyNewsList),
        ),
        transitionsBuilder: _rootTransitionBuilder,
      ),
    ),
    GoRoute(
      path: '/sources',
      pageBuilder: (ctx, state) => CustomTransitionPage(
        key: state.pageKey,
        child: _dummyPage(ctx, 'Coming Soon'),
        transitionsBuilder: _rootTransitionBuilder,
      ),
    )
  ],
);

Widget _rootTransitionBuilder(
  BuildContext ctx,
  Animation<double> animation,
  Animation<double> secondAnimation,
  Widget child,
) {
  return ScaleTransition(
    scale: animation.drive(Tween(
      begin: 0.0,
      end: 1.0,
    ).chain(CurveTween(curve: Curves.easeInOutCirc))),
    child: child,
  );
}

Widget _dummyPage(BuildContext ctx, String txt) {
  return Container(
    color: ctx.theme.scaffoldBackgroundColor,
    child: Center(
      child: Text(txt, style: ctx.textTheme.headline6),
    ),
  );
}
