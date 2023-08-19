import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simply_sell/core/constants/app_defaults.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../domain/entities/product_entity.dart';

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
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1,
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
                  product.brandName != null
                      ? Text(
                          '${product.id}',
                          style: Theme.of(context).textTheme.labelMedium,
                        )
                      : SizedBox(),
                  SizedBox(height: 4),
                  SizedBox(
                    height: 36,
                    child: Text(
                      product.productTitle,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(product.variants.first.uomName!),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppDefaults.currency +
                            ' ${product.variants.first.price.toStringAsFixed(0)}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 28,
                        width: 76,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: AppColors.primary),
                            elevation: 10,
                          ),
                          onPressed: () {},
                          child: Text(
                            'ADD',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
