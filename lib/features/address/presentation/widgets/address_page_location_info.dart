import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/location/presentation/cubits/set_location_cubit.dart';

import '../../../../core/constants/app_colors.dart';

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
              BlocBuilder<SetLocationCubit, SetLocationState>(
                builder: (context, state) {
                  if (state is SetLocationStateDone) {
                    return Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.locationAddress.addressTitle,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            state.locationAddress.addressSubtitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    );
                  }
                  return SizedBox();
                },
              ),
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
                  onPressed: () {
                    context.pushReplacement(AppRoutes.newAddressSearch);
                  },
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
