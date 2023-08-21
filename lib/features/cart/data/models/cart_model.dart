import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';

class CartModel extends CartEntity {
  CartModel({
    required super.variantId,
    required super.userId,
    required super.productTitle,
    required super.price,
  });

  Map<String, dynamic> toJson() {
    return {
      'variant_id': variantId,
      'user_id': userId,
      'product_title': productTitle,
      'price': price,
    };
  }
}
