library core;

import 'package:flutter/material.dart';

import 'common/errors/5xx/error_500_page.dart';
import 'common/errors/errors.dart';
import 'common/styles/app_theme.dart';

export 'common/routes/app_routes.dart';
export 'common/utils/app_extensions.dart';
export 'common/utils/constants.dart';

/// Get `ThemeData` for both theme mode to use
/// into your Flutter app.
/// ```dart
/// AppThemes.theme; // for light theme
/// ```
abstract class AppThemes {
  static ThemeData theme = appLightTheme;
  static ThemeData darkTheme = appDarkTheme;
}

/// Get Widget to display the app errors.
/// ```dart
/// ErrorPages.unknownError; // for 500 status code
/// ```
///
/// Some properties are a function with custom message parameter.
/// ```dart
/// ErrorPages.invariant.badRequest('Your custom msg'); // for 400 status code
/// ```
abstract class ErrorPages {
  /// An object that contains Widgets to display client request error with details.
  ///
  /// `Note:` It is not cover all the `4xx` status codes, such as `403` (Forbidden).
  static final invariant = _InvariantErrorPages(
    badRequest: ({msg}) => Error400Page(msg: msg),
    notFound: ({msg}) => Error404Page(msg: msg),
    unprocessableEntity: ({msg}) => Error422Page(msg: msg),
  );

  /// Status Code `500`.
  ///
  /// Used for unknown error.
  static const unknownError = Error500Page();
}

class _InvariantErrorPages {
  /// Status Code `400`.
  ///
  /// The request could not be understood or was missing required parameters.
  final Error400Page Function({String? msg}) badRequest;

  /// Status Code `404`.
  ///
  /// Resource was not found.
  final Error404Page Function({String? msg}) notFound;

  /// Status Code `422`.
  ///
  /// Request was well-formed but was unable to be followed due to semantic errors.
  final Error422Page Function({String? msg}) unprocessableEntity;

  const _InvariantErrorPages({
    required this.badRequest,
    required this.notFound,
    required this.unprocessableEntity,
  });
}
