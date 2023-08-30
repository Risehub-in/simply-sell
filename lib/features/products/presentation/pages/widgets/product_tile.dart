import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/product_tile_brand_and_title.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/product_tile_price_and_add_to_cart.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/product_tile_uom.dart';
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
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(width: 0.4, color: Colors.grey.shade300),
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
                  ProductTileBrandAndTitle(product: product),
                  SizedBox(height: 10),
                  ProductTileUom(product: product),
                  SizedBox(height: 10),
                  ProductTilePriceAndAddToCart(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
