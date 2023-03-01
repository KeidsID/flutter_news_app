import 'package:flutter/material.dart';

import '../../core/styles/app_theme.dart';
import '../../core/utils/app_extension.dart';

class AppIcon extends StatelessWidget {
  final double? height;

  const AppIcon({Key? key, this.height = kToolbarHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: (context.isDarkMode)
                ? appDarkPrimaryColor
                : Colors.black.withOpacity(0.6),
            blurRadius: 32,
            spreadRadius: -20,
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: height,
      child: Image.asset(
        'assets/images/ic-news.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
