import 'package:go_router/go_router.dart';
import 'package:simply_sell/features/auth/presentation/pages/login_page.dart';
import 'package:simply_sell/features/auth/presentation/pages/otp_page.dart';
import 'package:simply_sell/features/home/presentation/pages/home_page.dart';
import 'package:simply_sell/features/products/presentation/pages/product_list_page.dart';

import '../../features/auth/presentation/pages/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash-screen',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: '/otp',
        builder: (context, state) => OtpPage(phone: state.extra as int),
      ),
      GoRoute(
        path: '/product-list',
        builder: (context, state) => ProductListPage(),
      ),
      GoRoute(
        path: '/splash-screen',
        builder: (context, state) => SplashScreen(),
      ),
    ],
  );
}
