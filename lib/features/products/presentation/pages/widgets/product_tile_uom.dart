import 'package:flutter/material.dart';

import '../../../domain/entities/product_entity.dart';

class ProductTileUom extends StatelessWidget {
  const ProductTileUom({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (product.variants.first.uomName != null &&
            product.variants.first.uomValue != null)
          Text(
            '${product.variants.first.uomValue} ${product.variants.first.uomName!}',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        if (product.variants.first.uom_packaging != null)
          Text(
            ' x ${product.variants.first.uom_packaging}',
            style: Theme.of(context).textTheme.bodySmall,
          )
      ],
    );
  }
}
