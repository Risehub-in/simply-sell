import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entity/cart_entity.dart';
import '../cubit/cart_cubit/cart_cubit.dart';
import 'cart_item_row.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartStateLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CartStateDone) {
          List<CartEntity> cartItems = state.cartItems;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Review Items',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Card(
                margin: EdgeInsets.all(0),
                surfaceTintColor: Colors.white,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 14.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(height: 14),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      CartEntity cartItem = cartItems[index];
                      return CartItemRow(cartItem: cartItem);
                    },
                  ),
                ),
              ),
            ],
          );
        }
        if (state is CartStateError) {
          return Text(state.message);
        }
        return SizedBox();
      },
    );
  }
}
