import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import 'package:simply_sell/core/constants/app_defaults.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import '../../domain/entity/cart_entity.dart';
import '../widgets/bill_details.dart';
import '../widgets/cart_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      bottomNavigationBar: CartBottomSheet(),
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        title: Text('Your Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            if (state is CartStateLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CartStateDone) {
              double cartItemTotal = 0;
              state.cartItems.forEach((cartItem) {
                cartItemTotal += cartItem.price * cartItem.cartQuantity;
              });
              List<CartEntity> cartItems = state.cartItems;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CartItems(
                      cartItems: cartItems,
                    ),
                    SizedBox(height: 14),
                    BillDetals(cartItemTotal: cartItemTotal),
                  ],
                ),
              );
            }
            return Text('Empty Cart');
          },
        ),
      ),
    );
  }
}

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.primary, fontWeight: FontWeight.bold),
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
                  Text(
                    'You seem to be in a new location!',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text('2845 Avenue L1. Global City. Virar West')
            ],
          ),
          Spacer(),
          SizedBox(
            height: 48,
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
