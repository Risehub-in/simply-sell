import 'package:flutter/material.dart';

import '../../../../../core/constants/app_defaults.dart';
import '../../../domain/entities/product_entity.dart';
import 'add_to_cart.dart';

class ProductTilePriceAndAddToCart extends StatelessWidget {
  const ProductTilePriceAndAddToCart({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            if (product.variants.first.mrp != null)
              Text(
                AppDefaults.currency +
                    '${product.variants.first.mrp?.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      decoration: TextDecoration.lineThrough,
                      height: 0.6,
                    ),
              ),
            Text(
              AppDefaults.currency +
                  '${product.variants.first.price.toStringAsFixed(0)}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        AddToCart(product: product),
      ],
    );
  }
}
