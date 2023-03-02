import '../errors_page.dart';

class Error404Page extends ErrorsPage {
  /// Page to display Not Found (404) error.
  const Error404Page({super.key})
      : super(
          statusCode: 404,
          name: 'Not Found',
          message: "Make sure you didn't type the URL path incorrectly.",
        );
}
