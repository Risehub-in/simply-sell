import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/variant_bottom_sheet.dart';
import '../../../../../core/widgets/add_to_cart_button.dart';
import '../../../../../core/widgets/increment_decrement_cart_quantity.dart';
import '../../../../cart/domain/entity/cart_entity.dart';
import '../../../../cart/presentation/cubit/cart_cubit.dart';
import '../../../domain/entities/product_entity.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartStateLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CartStateDone) {
          int variantCartQuantityTotal = 0;
          for (var cartItem in state.cartItems) {
            if (product.variants.length > 1) {
              if (cartItem.productId == product.id) {
                variantCartQuantityTotal += cartItem.cartQuantity;
              }
            }
          }
          for (var cartItem in state.cartItems) {
            if (product.variants
                .any((variant) => variant.id == cartItem.variantId)) {
              return IncrementDecrementCartQuantity(
                minusQuantityOnpress: () async {
                  if (product.variants.length > 1) {
                    _displayVariantOptionBottomSheet(context);
                  } else {
                    if (cartItem.cartQuantity == 1) {
                      cartCubit.deleteCartItem(product.variants.first.id);
                    } else {
                      cartCubit.updateCartQuantity(
                        product.variants.first.id,
                        cartItem.cartQuantity - 1,
                      );
                    }
                  }
                },
                addQuantityOnpress: () {
                  if (product.variants.length > 1) {
                    _displayVariantOptionBottomSheet(context);
                  } else {
                    cartCubit.updateCartQuantity(
                      product.variants.first.id,
                      cartItem.cartQuantity + 1,
                    );
                  }
                },
                cartQuantity: product.variants.length > 1
                    ? variantCartQuantityTotal
                    : cartItem.cartQuantity,
              );
            }
          }
        }
        return AddToCartButton(
          text: product.variants.length > 1
              ? '${product.variants.length} options'
              : 'ADD',
          onPressed: () {
            product.variants.length > 1
                ? _displayVariantOptionBottomSheet(context)
                : _addToCart(context, product);
          },
        );
      },
    );
  }

  Future<void> _addToCart(BuildContext context, ProductEntity product) async {
    try {
      context.read<CartCubit>().addToCart(
            CartEntity(
              productId: product.id,
              image: product.featuredImage!,
              price: product.variants.first.price,
              productTitle: product.productTitle,
              variantId: product.variants.first.id,
              uomName: product.variants.first.uomName,
              uomValue: product.variants.first.uomValue,
              cartQuantity: 1,
              mrp: product.variants.first.mrp,
            ),
          );
    } catch (e) {
      print(e.toString());
    }
  }

  Future _displayVariantOptionBottomSheet(BuildContext context) async {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      context: context,
      builder: (context) {
        return VariantBottomSheet(
          product: product,
        );
      },
    );
  }
}
