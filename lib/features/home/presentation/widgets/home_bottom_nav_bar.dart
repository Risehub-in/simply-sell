import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';

class HomeBottomNavBar extends StatefulWidget {
  final Widget child;
  const HomeBottomNavBar({super.key, required this.child});

  @override
  State<HomeBottomNavBar> createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: ConvexAppBar(
        top: -14,
        height: 58,
        curveSize: 80,
        backgroundColor: AppColors.primary,
        color: Colors.white,
        items: [
          TabItem(
            title: 'Home',
            icon: Icons.home_filled,
          ),
          TabItem(
            title: 'Categories',
            icon: SvgPicture.asset(AppIcons.category),
            isIconBlend: true,
            activeIcon: SvgPicture.asset(
              AppIcons.category,
              fit: BoxFit.none,
            ),
          ),
          TabItem(
            title: 'Cart',
            icon: Icons.shopping_cart_outlined,
          ),
          TabItem(
            title: 'Profile',
            icon: Icons.person,
          ),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          switch (index) {
            case 0:
              context.go(AppRoutes.home);
              break;
            case 1:
              context.go(AppRoutes.categories);
              break;
            case 2:
              context.push(AppRoutes.cart);
              break;
          }
        },
      ),
    );
  }
}
