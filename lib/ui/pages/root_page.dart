import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../core/utils/app_routes.dart';
import '../../core/utils/constants.dart';
import '../providers/root_page_provider.dart';
import '../widgets/app_icon.dart';

class RootPage extends StatelessWidget {
  /// The primary content of the page.
  final Widget? child;

  const RootPage({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth <= 600) {
          return _RootThinPage(key: key, child: child);
        }

        return _RootWidePage(key: key, child: child);
      },
    );
  }
}

class _NavBarDecos {
  final Icon icon;
  final String label;

  const _NavBarDecos({
    required this.icon,
    required this.label,
  });
}

const _rootPageNavBarDecos = [
  _NavBarDecos(icon: Icon(Icons.newspaper), label: 'News'),
  _NavBarDecos(icon: Icon(Icons.public), label: 'Sources'),
];

void Function(int) _onTapNavBar(BuildContext context) {
  return (currentIndex) {
    if (currentIndex == 0) {
      context.go(AppRoutes.news.path);
      return;
    }

    context.go(AppRoutes.sources);
  };
}

class _RootThinPage extends StatelessWidget {
  final Widget? child;

  const _RootThinPage({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(appName),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          child ?? const SizedBox(),
          Column(
            children: const [
              Expanded(child: SizedBox()),
              Divider(height: 0.5, thickness: 0.5),
            ],
          )
        ],
      ),
      bottomNavigationBar: Consumer<RootPageProvider>(
        builder: (ctx, prov, _) {
          return BottomNavigationBar(
            showUnselectedLabels: false,
            currentIndex: prov.navigationIndex,
            onTap: _onTapNavBar(ctx),
            items: [
              BottomNavigationBarItem(
                icon: _rootPageNavBarDecos[0].icon,
                label: _rootPageNavBarDecos[0].label,
              ),
              BottomNavigationBarItem(
                icon: _rootPageNavBarDecos[1].icon,
                label: _rootPageNavBarDecos[1].label,
              ),
            ],
          );
        },
      ),
      floatingActionButton: const AppIcon(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _RootWidePage extends StatelessWidget {
  final Widget? child;

  const _RootWidePage({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer<RootPageProvider>(
          builder: (ctx, prov, _) {
            return NavigationRail(
              selectedIndex: prov.navigationIndex,
              labelType: NavigationRailLabelType.selected,
              onDestinationSelected: _onTapNavBar(ctx),
              leading: const AppIcon(),
              destinations: [
                NavigationRailDestination(
                  icon: _rootPageNavBarDecos[0].icon,
                  label: Text(_rootPageNavBarDecos[0].label),
                ),
                NavigationRailDestination(
                  icon: _rootPageNavBarDecos[1].icon,
                  label: Text(_rootPageNavBarDecos[1].label),
                ),
              ],
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            );
          },
        ),
        const VerticalDivider(width: 0.5, thickness: 0.5),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text(appName),
            ),
            body: child,
          ),
        ),
      ],
    );
  }
}
