import 'package:flutter/material.dart';

import '../../features/products/domain/entities/product_entity.dart';
import '../constants/app_colors.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.product,
    required this.onPressed,
    required this.text,
    this.width = 84,
  });

  final ProductEntity product;
  final Function()? onPressed;
  final String text;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          side: BorderSide(
            color: AppColors.borderColor,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
