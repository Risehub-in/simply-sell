import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_defaults.dart';
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
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: product.featuredImage ??
                  "https://craftypixels.com/placeholder-image/300",
              width: 156,
              height: 110,
            ),
            SizedBox(
              width: 156,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.productTitle,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.textColor,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: AppDefaults.margin * 0.4),
                  // Text(
                  //   '${product.measurement} ${product.unitOfMeasurement}',
                  //   style: Theme.of(context).textTheme.bodySmall,
                  // ),
                  Row(
                    children: [
                      // Column(
                      //   children: [
                      //     Text(
                      //       '${AppDefaults.currency} ${(product.maxRetailPrice)?.toStringAsFixed(0)}',
                      //       style:
                      //           Theme.of(context).textTheme.bodySmall?.copyWith(
                      //                 decoration: TextDecoration.lineThrough,
                      //               ),
                      //     ),
                      //     Text(
                      //       '${AppDefaults.currency} ${(product.salesPrice).toStringAsFixed(0)}',
                      //       style: Theme.of(context)
                      //           .textTheme
                      //           .labelLarge
                      //           ?.copyWith(
                      //             fontWeight: FontWeight.bold,
                      //             color: AppColors.lightBlack,
                      //           ),
                      //     )
                      //   ],
                      // ),
                      const Spacer(),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('ADD'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
