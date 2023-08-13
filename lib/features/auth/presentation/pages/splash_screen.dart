import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/auth/presentation/cubit/app_auth_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    redirectUser();
    super.initState();
  }

  void redirectUser() {
    final authCubit = context.read<AppAuthCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (authCubit.state is AppAuthenticated) {
        context.go(AppRoutes.home);
      } else {
        context.go(AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
