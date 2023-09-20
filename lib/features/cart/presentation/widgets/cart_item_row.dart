import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import '../../../../core/constants/app_defaults.dart';
import '../../../../core/widgets/increment_decrement_cart_quantity.dart';
import '../../domain/entity/cart_entity.dart';
import '../cubit/cart_cubit.dart';

class CartItemRow extends StatelessWidget {
  const CartItemRow({super.key, required this.cartItem});

  final CartEntity cartItem;

  @override
  Widget build(BuildContext context) {
    double totalPrice = cartItem.price * cartItem.cartQuantity;
    double totalMrp =
        cartItem.mrp != null ? cartItem.mrp! * cartItem.cartQuantity : 0;
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              color: AppColors.scaffoldColor,
              child: CachedNetworkImage(
                height: 40,
                imageUrl: cartItem.image,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    cartItem.productTitle,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(height: 1),
                  ),
                ),
                SizedBox(height: 2),
                if (cartItem.uomName != null)
                  Text(
                    '${cartItem.uomValue}${cartItem.uomName!}',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
              ],
            ),
          ],
        ),
        SizedBox(width: 12),
        IncrementDecrementCartQuantity(
          minusQuantityOnpress: () async {
            if (cartItem.cartQuantity == 1) {
              await context.read<CartCubit>().deleteCartItem(cartItem.id!);
            } else {
              await context
                  .read<CartCubit>()
                  .updateCartQuantity(cartItem.id!, cartItem.cartQuantity - 1);
            }
          },
          addQuantityOnpress: () async {
            await context
                .read<CartCubit>()
                .updateCartQuantity(cartItem.id!, cartItem.cartQuantity + 1);
          },
          cartQuantity: cartItem.cartQuantity,
        ),
        Spacer(),
        Column(
          children: [
            Text(
              AppDefaults.currency + '${totalPrice.toStringAsFixed(0)}',
            ),
            if (cartItem.mrp != null)
              Text(
                AppDefaults.currency + '${totalMrp.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      decoration: TextDecoration.lineThrough,
                      height: 0.6,
                    ),
              ),
          ],
        )
      ],
    );
  }
}
