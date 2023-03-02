import '../errors_page.dart';

class Error500Page extends ErrorsPage {
  /// Page to display Internal (500) error.
  /// 
  /// Used for unknown error.
  const Error500Page({super.key})
      : super(
          statusCode: 500,
          name: 'Internal Error',
        );
}
