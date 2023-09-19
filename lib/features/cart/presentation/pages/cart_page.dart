import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';
import '../../domain/entity/cart_entity.dart';
import '../widgets/bill_details.dart';
import '../widgets/cart_bottom_sheet/cart_bottom_sheet.dart';
import '../widgets/cart_items.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      bottomNavigationBar: CartBottomSheet(),
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        title: Text('Your Cart'),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartStateLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is CartStateDone) {
            if (state.cartItems.length > 0) {
              double cartItemTotal = 0;
              state.cartItems.forEach((cartItem) {
                cartItemTotal += cartItem.price * cartItem.cartQuantity;
              });
              List<CartEntity> cartItems = state.cartItems;
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CartItems(
                        cartItems: cartItems,
                      ),
                      SizedBox(height: 16),
                      BillDetals(cartItemTotal: cartItemTotal),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              );
            }
          }
          return Center(child: Text('Empty Cart'));
        },
      ),
    );
  }
}
