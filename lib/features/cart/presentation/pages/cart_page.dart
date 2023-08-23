import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';

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
            print(state.cartEntity);
            return SizedBox();
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
