import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';
import '../../domain/entity/cart_entity.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartStateLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is CartStateDone) {
            print(state.cartItems);
            return ListView.builder(
              itemCount: state.cartItems.length,
              itemBuilder: (context, index) {
                CartEntity cartItem = state.cartItems[index];
                return Text('${cartItem.price}');
              },
            );
          }
          if (state is CartStateError) {
            return Text(state.message);
          }
          return SizedBox();
        },
      ),
    );
  }
}
