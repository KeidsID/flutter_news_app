import '../errors_page.dart';

class Error404Page extends ErrorsPage {
  const Error404Page({super.key})
      : super(
          statusCode: 404,
          message: "Page Not Found. Make sure you didn't type the URL path incorrectly.",
        );
}
