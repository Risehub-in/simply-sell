import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/auth/presentation/cubit/app_auth_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/coordinates_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/coverage_cubit.dart';

import '../../../location/presentation/cubits/get_location_cubit.dart';

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

  void redirectUser() async {
    final authCubit = context.read<AppAuthCubit>();
    await context.read<CoordinatesCubit>().getCoordintes();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (authCubit.state is AppAuthenticated) {
        context.go(AppRoutes.home);
      } else {
        context.go(AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CoordinatesCubit, CoordinatesState>(
      listener: (context, state) {
        if (state is CoordinatesStateDone) {
          context.read<CoverageCubit>().isInDeliveryRadius(
              state.coordinates.latitude, state.coordinates.longitude);

          context.read<GetLocationCubit>().getAddressByCoordinates(
              state.coordinates.latitude, state.coordinates.longitude);
        }
      },
      child: Scaffold(),
    );
  }
}
