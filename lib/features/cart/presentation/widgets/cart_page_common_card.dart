import 'package:flutter/material.dart';

class CartPageCommonCard extends StatelessWidget {
  const CartPageCommonCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: child,
      ),
    );
  }
}
