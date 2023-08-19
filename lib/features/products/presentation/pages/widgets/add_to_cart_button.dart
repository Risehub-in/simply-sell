import 'package:flutter/material.dart';
import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_defaults.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.variants,
  });

  final List<VariantEntity> variants;

  @override
  Widget build(BuildContext context) {
    return variants.length > 1
        ? SizedBox(
            height: 30,
            width: 80,
            child: TextButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppDefaults.radius),
                  ),
                ),
                side: BorderSide(
                  color: AppColors.primary,
                ),
                elevation: 10,
              ),
              onPressed: () {},
              child: Text(
                '${variants.length} options',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.primary,
                    ),
              ),
            ),
          )
        : SizedBox(
            height: 30,
            width: 80,
            child: TextButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppDefaults.radius),
                  ),
                ),
                side: BorderSide(color: AppColors.primary),
                elevation: 10,
              ),
              onPressed: () {},
              child: Text(
                'ADD',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.primary,
                    ),
              ),
            ),
          );
  }
}
