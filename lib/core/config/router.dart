import 'package:go_router/go_router.dart';
import 'package:simply_sell/features/auth/presentation/pages/splash_screen.dart';
import 'package:simply_sell/features/home/presentation/pages/home_page.dart';
import 'package:simply_sell/features/products/presentation/pages/product_list_page.dart';

class AppRoute {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(
          path: '/products', builder: (context, state) => ProductListPage()),
      GoRoute(
          path: '/splash-screen', builder: (context, state) => SplashScreen()),
    ],
  );
}
