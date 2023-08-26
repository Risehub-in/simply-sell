import 'package:flutter/material.dart';
import '../widgets/cart_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO Add color constant
      backgroundColor: Color(0xFFF1F0F4),
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartItems(),
          ],
        ),
      ),
    );
  }
}
