/// List of routes path for go_router navigation.
/// 
/// Usecase example:
/// ```dart
/// void function onTapButton (BuildContext context) {
///   context.go(AppRoutes.root); // Go to `/` page.
/// }
/// ```
abstract class AppRoutes {
  static const root = '/';
  static const news = _NewsRoutes();
  static const sources = '/sources';
  static const options = '/options';
}

class _NewsRoutes {
  const _NewsRoutes();

  final path = '/news';

  /// Get path `/news` with param id.
  String pathWithId(String id) => '$path/:$id';
}
