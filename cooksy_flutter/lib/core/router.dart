import 'package:cooksy_flutter/pages/home/home_page.dart';
import 'package:cooksy_flutter/pages/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/';
}

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(path: AppRoutes.splash, builder: (context, state) => const SplashPage()),
      GoRoute(path: AppRoutes.home, builder: (context, state) => const HomePage()),
    ],
  );
}
