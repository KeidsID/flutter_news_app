import 'package:flutter/material.dart';

import '../utils/app_extension.dart';

abstract class ErrorsPage extends StatelessWidget {
  final int statusCode;
  final String name;
  final String? message;

  /// Page to display errors info.
  const ErrorsPage({
    super.key,
    required this.statusCode,
    required this.name,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$statusCode', style: context.textTheme.headline3),
            Text(name, style: context.textTheme.headline4),
            const Divider(),
            Text(
              message ?? 'Sorry for the inconvenience.',
              textAlign: TextAlign.center,
              style: context.textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
