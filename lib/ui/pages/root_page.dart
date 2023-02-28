import 'package:flutter/material.dart';
import 'package:flutter_news_app/core/utils/app_routes.dart';
import 'package:go_router/go_router.dart';

import '../../core/styles/app_theme.dart';
import '../../core/utils/app_extension.dart';

class RootPage extends StatefulWidget {
  /// Main content to displayed on the page.
  final Widget? child;

  const RootPage({super.key, this.child});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _bottomBarCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:
            (context.isDarkMode) ? appDarkPrimaryColor : appPrimaryColor,
        currentIndex: _bottomBarCurrentIndex,
        onTap: (currentIndex) {
          setState(() {
            _bottomBarCurrentIndex = currentIndex;
          });

          if (currentIndex == 0) {
            context.go(AppRoutes.news.path);
            return;
          }

          context.go(AppRoutes.sources);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Sources'),
        ],
        
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: (context.isDarkMode) ? appDarkPrimaryColor : Colors.black,
              blurRadius: 32,
              spreadRadius: -20,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: 80,
        child: Image.asset('assets/images/ic-news.png'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
