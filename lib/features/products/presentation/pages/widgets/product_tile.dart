import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simply_sell/core/constants/app_defaults.dart';
import '../../../domain/entities/product_entity.dart';
import 'add_to_cart_button.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(width: 0.6, color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CachedNetworkImage(
              imageUrl: product.featuredImage ??
                  "https://craftypixels.com/placeholder-image/300",
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildBrandAndTitle(context),
                  SizedBox(height: 10),
                  buildUom(context),
                  SizedBox(height: 10),
                  buildPriceAndAddToCartButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBrandAndTitle(BuildContext context) {
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

  Widget buildUom(BuildContext context) {
    return Row(
      children: [
        if (product.variants.first.uomName != null &&
            product.variants.first.uomValue != null)
          Text(
            '${product.variants.first.uomValue}${product.variants.first.uomName!}',
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

  Widget buildPriceAndAddToCartButton(BuildContext context) {
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
        AddToCartButton(variants: product.variants)
      ],
    );
  }
}
