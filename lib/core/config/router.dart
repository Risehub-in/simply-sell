import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/auth/presentation/pages/login_page.dart';
import 'package:simply_sell/features/auth/presentation/pages/otp_page.dart';
import 'package:simply_sell/features/cart/presentation/pages/cart_page.dart';
import 'package:simply_sell/features/categories/presentation/pages/categories_page.dart';
import 'package:simply_sell/features/home/presentation/pages/home_page.dart';
import 'package:simply_sell/features/home/presentation/widgets/home_bottom_nav_bar.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import 'package:simply_sell/features/location/presentation/pages/search_location_page.dart';
import 'package:simply_sell/features/products/presentation/pages/products_page.dart';

import '../../features/auth/presentation/pages/splash_screen.dart';
import '../../features/location/presentation/pages/set_location_page.dart';
import '../../features/order/presentation/pages/order_details_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splashScreen,
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return HomeBottomNavBar(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutes.home,
            builder: (context, state) => HomePage(),
          ),
          GoRoute(
            path: AppRoutes.categories,
            builder: (context, state) => CategoriesPage(),
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.cart,
        builder: (context, state) => CartPage(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.otp,
        builder: (context, state) => OtpPage(phone: state.extra as int),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.products,
        builder: (context, state) => ProductsPage(
          category_id: state.extra as int,
        ),
      ),
      GoRoute(
        path: AppRoutes.splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.searchLocation,
        builder: (context, state) => SearchLocationPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.setLocation,
        builder: (context, state) => SetLocationPage(
          coordinates: state.extra as CoordinatesEntity,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: AppRoutes.orderDetails,
        builder: (context, state) => OrderDetailsPage(),
      ),
    ],
  );
}
