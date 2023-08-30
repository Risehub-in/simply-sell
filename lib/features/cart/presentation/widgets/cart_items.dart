import 'package:flutter/material.dart';
import 'package:simply_sell/features/cart/presentation/widgets/cart_page_common_card.dart';
import '../../domain/entity/cart_entity.dart';
import 'cart_item_row.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, required this.cartItems});

  final List<CartEntity> cartItems;

  @override
  Widget build(BuildContext context) {
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
        CartPageCommonCard(
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
      ],
    );
  }
}
