import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
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
      appBar: AppBar(
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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CartItems(
                    cartItems: cartItems,
                  ),
                  SizedBox(height: 14),
                  BillDetals(cartItemTotal: cartItemTotal),
                ],
              );
            }
            return Text('Empty Cart');
          },
        ),
      ),
    );
  }
}
