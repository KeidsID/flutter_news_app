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
          _ButtonToOptions.forThinPage(context),
        ],
      ),
      body: Stack(
        children: [
          child ?? const SizedBox(),
          Column(
            children: const [
              Expanded(child: SizedBox()),
              Divider(height: 1, thickness: 1),
            ],
          )
        ],
      ),
      bottomNavigationBar: Consumer<RootPageProvider>(
        builder: (ctx, prov, _) {
          return BottomNavigationBar(
            showUnselectedLabels: false,
            currentIndex: prov.navigationIndex,
            onTap: _onTapNavBarItem(ctx),
            items: _RootPageNavBarItems.forThinPage,
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
        // NavRail
        Consumer<RootPageProvider>(
          builder: (ctx, prov, _) {
            return NavigationRail(
              selectedIndex: prov.navigationIndex,
              labelType: NavigationRailLabelType.selected,
              onDestinationSelected: _onTapNavBarItem(ctx),
              leading: const AppIcon(),
              destinations: _RootPageNavBarItems.forWidePage,
              trailing: _ButtonToOptions.forWidePage(ctx),
            );
          },
        ),
        const VerticalDivider(width: 1, thickness: 1),
        // Main content
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

class _NavBarDeco {
  final Icon icon;
  final String label;

  const _NavBarDeco({
    required this.icon,
    required this.label,
  });
}

/// RootPage Navigation Bar Items config for both
/// thin and wide device.
///
/// Access it with class name.
///
/// Example:
/// ```dart
/// _RootPageNavBarItems.forThinPage; // return items for BottomNavigationBar
/// ```
abstract class _RootPageNavBarItems {
  static const _navBarDecos = [
    _NavBarDeco(icon: Icon(Icons.newspaper), label: 'News'),
    _NavBarDeco(icon: Icon(Icons.public), label: 'Sources'),
  ];

  static final forThinPage = _navBarDecos.map((e) {
    return BottomNavigationBarItem(icon: e.icon, label: e.label);
  }).toList();

  static final forWidePage = _navBarDecos.map((e) {
    return NavigationRailDestination(icon: e.icon, label: Text(e.label));
  }).toList();
}

void Function(int) _onTapNavBarItem(BuildContext context) {
  return (currentIndex) {
    Provider.of<RootPageProvider>(
      context,
      listen: false,
    ).setNavigationIndexState(currentIndex);

    if (currentIndex == 0) {
      context.go(AppRoutes.news.path);
      return;
    }

    context.go(AppRoutes.sources);
  };
}

abstract class _ButtonToOptions {
  static void Function() _onPressed(BuildContext ctx) {
    return () => ctx.go(AppRoutes.options);
  }

  static const _tooltip = 'Options';

  static IconButton forThinPage(BuildContext context) {
    return IconButton(
      onPressed: _onPressed(context),
      icon: const Icon(Icons.more_vert),
      tooltip: _tooltip,
    );
  }

  static IconButton forWidePage(BuildContext context) {
    return IconButton(
      onPressed: _onPressed(context),
      icon: const Icon(Icons.more_horiz),
      tooltip: _tooltip,
    );
  }
}
