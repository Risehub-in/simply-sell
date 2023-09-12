import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/get_location_cubit.dart';

import 'user_address_not_selected.dart';
import 'user_address_selected.dart';

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
            return BlocBuilder<GetLocationCubit, GetLocationState>(
              builder: (context, state) {
                if (state is GetLocationStateDone) {
                  return state.addressId != null
                      ? UserAddressSelected(
                          addressType: state.addressType!,
                          addressTitle: '${state.locationAddress.addressTitle}',
                          addressSubTitle:
                              '${state.locationAddress.addressSubtitle}',
                        )
                      : UserAddressNotSelected(
                          addressSubtitle:
                              state.locationAddress.addressSubtitle,
                          addressTitle: state.locationAddress.addressTitle,
                        );
                }
                return SizedBox();
              },
            );
          }
        }
        return SizedBox();
      },
    );
  }
}
