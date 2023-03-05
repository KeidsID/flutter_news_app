import 'package:go_router/go_router.dart';

import '../../ui/pages/options_page.dart';

final optionsRoute = GoRoute(
  path: '/options',
  builder: (_, __) => const OptionsPage(),
);
