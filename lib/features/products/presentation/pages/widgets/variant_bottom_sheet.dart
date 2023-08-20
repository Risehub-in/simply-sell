import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import 'package:simply_sell/features/products/domain/entities/product_entity.dart';
import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/add_to_cart_button.dart';
import '../../../../../core/constants/app_defaults.dart';

class VariantBottomSheet extends StatelessWidget {
  const VariantBottomSheet({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.productTitle,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          ListView.separated(
              shrinkWrap: true,
              itemCount: product.variants.length,
              separatorBuilder: (context, index) => SizedBox(height: 12),
              itemBuilder: (context, index) {
                VariantEntity variant = product.variants[index];
                return BottomSheetVariantCard(
                    product: product, variant: variant);
              }),
          SizedBox(height: 12),
          Card(
            color: AppColors.primary,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item total:',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    AppDefaults.currency + '0',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'Confirm',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheetVariantCard extends StatelessWidget {
  const BottomSheetVariantCard({
    super.key,
    required this.product,
    required this.variant,
  });

  final ProductEntity product;
  final VariantEntity variant;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shadowColor: Colors.grey.shade50,
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                    height: 60, imageUrl: product.featuredImage!),
                Column(
                  children: [
                    if (variant.uomName != null && variant.uomValue != null)
                      Text(
                        '${variant.uomValue} ${variant.uomName!}',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    if (variant.uom_packaging != null)
                      Text(
                        ' x ${variant.uom_packaging}',
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  AppDefaults.currency + '${variant.price.toStringAsFixed(0)}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(width: 4),
                if (variant.mrp != null)
                  Text(
                    AppDefaults.currency + '${variant.mrp?.toStringAsFixed(0)}',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          decoration: TextDecoration.lineThrough,
                          height: 0.6,
                        ),
                  ),
              ],
            ),
            AddToCartButton(
              text: 'ADD',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
