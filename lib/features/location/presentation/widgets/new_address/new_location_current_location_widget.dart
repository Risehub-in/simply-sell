import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/location/presentation/cubits/coordinates_cubit.dart';

import '../../../../../core/constants/app_colors.dart';

class NewAddressCurrentLocation extends StatelessWidget {
  const NewAddressCurrentLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoordinatesCubit, CoordinatesState>(
      builder: (context, state) {
        if (state is CoordinatesStateLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CoordinatesStateError) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is CoordinatesStateDone) {
          print(state.coordinates);
          return GestureDetector(
            onTap: () async {
              print(state.coordinates);
              context.pushReplacement(AppRoutes.newAddress,
                  extra: state.coordinates);
            },
            child: Row(
              children: [
                Icon(
                  Icons.near_me,
                  size: 18,
                ),
                SizedBox(width: 6),
                Text(
                  'Use my current location',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                ),
              ],
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
