import 'package:flutter/material.dart';
import '../../../domain/entities/product_entity.dart';

class ProductTileBrandAndTitle extends StatelessWidget {
  const ProductTileBrandAndTitle({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (product.brandName != null)
          Text(
            '${product.brandName}',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        SizedBox(
          height: 36,
          child: Text(
            product.productTitle,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
