import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_defaults.dart';

class VariantBottomSheetSubtotal extends StatelessWidget {
  const VariantBottomSheetSubtotal({
    super.key,
    this.itemTotal = 0,
  });

  final double itemTotal;

  @override
  Widget build(BuildContext context) {
    return Card(
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
              AppDefaults.currency + '$itemTotal',
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
    );
  }
}
