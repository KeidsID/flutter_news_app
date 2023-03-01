import '../errors_page.dart';

class Error400Page extends ErrorsPage {
  const Error400Page({super.key})
      : super(statusCode: 400, message: 'Bad Request');
}
