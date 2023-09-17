import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../cubits/get_location_cubit.dart';

class GetCurrentLocation extends StatelessWidget {
  const GetCurrentLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.read<GetLocationCubit>().getAddressByCoordinates();
        context.pop();
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
}
