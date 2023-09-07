import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';

import '../../../../core/constants/app_colors.dart';
import '../cubits/coverage_cubit.dart';
import '../cubits/get_location_cubit.dart';
import '../cubits/set_location_cubit.dart';

class SetLocationBottomSheet extends StatelessWidget {
  const SetLocationBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        height: 146,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14.0,
            vertical: 14.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<SetLocationCubit, SetLocationState>(
                builder: (context, state) {
                  if (state is SetLocationStateLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is SetLocationStateError) {
                    return Center(
                      child: Text(state.message),
                    );
                  }
                  if (state is SetLocationStateDone) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, color: AppColors.primary),
                        SizedBox(width: 6),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.locationAddress.addressTitle,
                                style: Theme.of(context).textTheme.titleLarge,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Text(
                                state.locationAddress.addressSubtitle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                  return SizedBox();
                },
              ),
              SizedBox(height: 6),
              BlocBuilder<CoverageCubit, CoverageState>(
                builder: (context, state) {
                  if (state is CoverageStateLoading) {
                    return Text('Loading...');
                  }
                  if (state is CoverageStateDone) {
                    return SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text(
                          state.isUserInDeliveryRadius
                              ? 'Confirm location'
                              : 'Out of coverage Area',
                        ),
                        onPressed: state.isUserInDeliveryRadius
                            ? () {
                                final setLocationState =
                                    context.read<SetLocationCubit>().state;
                                if (setLocationState is SetLocationStateDone) {
                                  context
                                      .read<GetLocationCubit>()
                                      .getLocationFromSetLocation(
                                          setLocationState.locationAddress);
                                  context
                                      .read<CoverageCubit>()
                                      .setCoverageFromSetLocation();
                                  context.go(AppRoutes.home);
                                }
                              }
                            : null,
                      ),
                    );
                  }
                  return Text('Evershine Global City');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
