import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../location/presentation/cubits/get_location_cubit.dart';

class AddressPageLocationInfoWidget extends StatelessWidget {
  const AddressPageLocationInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<GetLocationCubit, GetLocationState>(
                builder: (context, state) {
                  if (state is GetLocationStateDone) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.locationAddress.addressTitle,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(state.locationAddress.addressSubtitle)
                      ],
                    );
                  }
                  return SizedBox();
                },
              ),
              Spacer(),
              SizedBox(
                height: 28,
                width: 70,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      side: BorderSide(color: AppColors.borderColor)),
                  onPressed: () {},
                  child: Text(
                    'Change',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
