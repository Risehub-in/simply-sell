import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:simply_sell/features/products/domain/entities/product_entity.dart';
import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/variant_bottom_sheet_subtotal.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/variant_bottom_sheet_variant_card.dart';

class VariantBottomSheet extends StatelessWidget {
  const VariantBottomSheet({
    super.key,
    required this.product,
  });

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
                return VariantBottomSheetVariantCard(
                  product: product,
                  variant: variant,
                );
              }),
          SizedBox(height: 12),
          BlocBuilder<CartCubit, CartState>(
            builder: (context, state) {
              if (state is CartStateDone) {
                double subTotal = 0;
                for (var cartItem in state.cartItems) {
                  if (product.variants.length > 1) {
                    if (cartItem.productId == product.id) {
                      subTotal += cartItem.price * cartItem.cartQuantity;
                    }
                  }
                }
                return VariantBottomSheetSubtotal(
                  itemTotal: subTotal,
                );
              }
              return SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
