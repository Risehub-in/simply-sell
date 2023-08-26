import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class IncrementDecrementCartQuantity extends StatelessWidget {
  const IncrementDecrementCartQuantity({
    super.key,
    required this.cartQuantity,
  });

  final int cartQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          width: 1,
          //TODO Add color constant
          color: Colors.grey.shade200,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      child: Row(
        children: [
          QuantityButton(
            icon: Icons.remove,
            onTap: () {},
          ),
          SizedBox(width: 10),
          Text(
            '$cartQuantity',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(width: 10),
          QuantityButton(
            icon: Icons.add,
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: AppColors.primary,
        size: 18,
      ),
    );
  }
}
