import '../errors_page.dart';

class Error422Page extends ErrorsPage {
  final String? msg;

  /// Page to display Unprocessable Entity (422) error.
  const Error422Page({super.key, this.msg})
      : super(
          statusCode: 422,
          name: 'Unprocessable Entity',
          message: msg,
        );
}
