import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              color: Colors.white,
              height: 186,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total: ${AppDefaults.currency}2500'),
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
                    height: 24,
                    thickness: 0.3,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text('You seem to be in a new location!',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                      SizedBox(height: 4),
                      Text('2845 Avenue L1. Global City. Virar West')
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 46,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add Address To Proceed'),
                    ),
                  )
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
