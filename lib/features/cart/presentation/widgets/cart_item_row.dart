import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_defaults.dart';
import '../../../../core/widgets/increment_decrement_cart_quantity.dart';
import '../../domain/entity/cart_entity.dart';

class CartItemRow extends StatelessWidget {
  const CartItemRow({super.key, required this.cartItem});

  final CartEntity cartItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              //TODO Add color constant
              color: Colors.indigo.shade50,
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
                  width: 110,
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
        IncrementDecrementCartQuantity(
          cartQuantity: cartItem.cartQuantity,
        ),
        Column(
          children: [
            if (cartItem.mrp != null)
              Text(
                AppDefaults.currency + '${cartItem.mrp?.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
            Text(
              AppDefaults.currency + '${cartItem.price.toStringAsFixed(0)}',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
