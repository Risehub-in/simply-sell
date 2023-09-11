import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import 'package:simply_sell/features/location/presentation/cubits/get_location_cubit.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_defaults.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartStateDone) {
          if (state.cartItems.length > 0) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              color: Colors.white,
              height: 176,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'To pay ${AppDefaults.currency}2500',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View Bill Details',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 18,
                    thickness: 0.3,
                  ),
                  LocationDetailsAndButton()
                ],
              ),
            );
          }
        }
        return SizedBox();
      },
    );
  }
}

class LocationDetailsAndButton extends StatelessWidget {
  const LocationDetailsAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetLocationCubit, GetLocationState>(
      builder: (context, state) {
        if (state is GetLocationStateDone) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.addressId != null
                              ? 'Delivery to ${state.locationAddress.addressTitle}'
                              : 'You seem to be in a new location!',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          '${state.locationAddress.addressSubtitle}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              SizedBox(
                height: 44,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (state.addressId != null) {
                      print('Proceed to pay');
                    } else {
                      context.push(
                        AppRoutes.newAddress,
                        extra: CoordinatesEntity(
                          latitude: state.coordinates.latitude,
                          longitude: state.coordinates.longitude,
                        ),
                      );
                    }
                  },
                  child: Text(
                    state.addressId != null ? 'Proceed to Pay' : 'Add Address',
                  ),
                ),
              )
            ],
          );
        }
        return SizedBox();
      },
    );
  }
}
