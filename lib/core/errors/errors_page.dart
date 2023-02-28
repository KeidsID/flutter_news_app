import 'package:flutter/material.dart';

import '../utils/app_extension.dart';

abstract class ErrorsPage extends StatelessWidget {
  final int statusCode;
  final String message;

  const ErrorsPage({
    super.key,
    this.statusCode = 500,
    this.message = 'Internal System Error',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('$statusCode', style: context.textTheme.headline6,),
            Text(message),
          ],
        ),
      ),
    );
  }
}
