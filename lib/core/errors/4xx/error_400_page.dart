import '../errors_page.dart';

class Error400Page extends ErrorsPage {
  final String? msg;

  /// Page to display Bad Request (400) error.
  const Error400Page({super.key, this.msg})
      : super(
          statusCode: 400,
          name: 'Bad Request',
          message: msg,
        );
}
