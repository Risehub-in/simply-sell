import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/page_constant.dart';
import 'package:simply_sell/features/auth/presentation/pages/login_page.dart';
import 'package:simply_sell/features/auth/presentation/pages/otp_page.dart';
import 'package:simply_sell/features/categories/presentation/pages/categories_page.dart';
import 'package:simply_sell/features/home/presentation/pages/home_page.dart';
import 'package:simply_sell/features/products/presentation/pages/products_page.dart';

import '../../features/auth/presentation/pages/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash-screen',
    routes: [
      GoRoute(
        path: PageConst.home,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: PageConst.login,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: PageConst.otp,
        builder: (context, state) => OtpPage(phone: state.extra as int),
      ),
      GoRoute(
        path: PageConst.products,
        builder: (context, state) => ProductsPage(),
      ),
      GoRoute(
        path: PageConst.splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: PageConst.categories,
        builder: (context, state) => CategoriesPage(),
      ),
    ],
  );
}
