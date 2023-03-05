import '../../errors_page.dart';

class Error404Page extends ErrorsPage {
  final String? msg;

  /// Page to display Not Found (404) error.
  const Error404Page({super.key, this.msg})
      : super(
          statusCode: 404,
          name: 'Not Found',
          message: msg,
        );
}
