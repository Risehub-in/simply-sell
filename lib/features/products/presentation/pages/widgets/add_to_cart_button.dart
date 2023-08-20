import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 90,
      child: TextButton(
        style: TextButton.styleFrom(
          side: BorderSide(
            color: AppColors.secondaryContainer,
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
