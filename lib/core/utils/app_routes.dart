/// List of routes path.
abstract class AppRoutes {
  static const root = '/';
  static const news = _NewsRoutes();
  static const sources = '/sources';
  static const settings = '/settings';
}

class _NewsRoutes {
  const _NewsRoutes();

  final path = '/news';

  /// Get path `/news` with param id.
  String pathWithId(String id) => '$path/:$id';
}
