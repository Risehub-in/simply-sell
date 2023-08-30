import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/widgets/increment_decrement_cart_quantity.dart';
import '../../../../../core/constants/app_defaults.dart';
import '../../../../../core/widgets/add_to_cart_button.dart';
import '../../../../cart/domain/entity/cart_entity.dart';
import '../../../../cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import '../../../domain/entities/product_entity.dart';
import '../../../domain/entities/variant_entity.dart';

class VariantBottomSheetVariantCard extends StatelessWidget {
  const VariantBottomSheetVariantCard({
    super.key,
    required this.product,
    required this.variant,
  });

  final ProductEntity product;
  final VariantEntity variant;

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
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
                        '${variant.uomValue}${variant.uomName!}',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    if (variant.uomPackaging != null)
                      Text(
                        ' x ${variant.uomPackaging}',
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
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state is CartStateDone) {
                  List<CartEntity> cartItems = state.cartItems;
                  for (var cartItem in cartItems) {
                    if (cartItem.variantId == variant.id) {
                      return IncrementDecrementCartQuantity(
                        cartQuantity: cartItem.cartQuantity,
                        minusQuantityOnpress: () {
                          if (cartItem.cartQuantity == 1) {
                            cartCubit.deleteCartItem(variant.id);
                          } else {
                            cartCubit.updateCartQuantity(
                                variant.id, cartItem.cartQuantity - 1);
                          }
                        },
                        addQuantityOnpress: () {
                          cartCubit.updateCartQuantity(
                              variant.id, cartItem.cartQuantity + 1);
                        },
                      );
                    }
                  }
                }
                return AddToCartButton(
                  width: 76,
                  onPressed: () => _addToCart(context),
                  text: 'ADD',
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addToCart(BuildContext context) async {
    await context.read<CartCubit>().addToCart(
          CartEntity(
            productId: product.id,
            image: product.featuredImage!,
            price: variant.price,
            productTitle: product.productTitle,
            variantId: variant.id,
            uomName: variant.uomName,
            uomValue: variant.uomValue,
            cartQuantity: 1,
            mrp: variant.mrp,
          ),
        );
  }
}
