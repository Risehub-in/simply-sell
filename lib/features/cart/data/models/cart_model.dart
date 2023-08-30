import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';

class CartModel extends CartEntity {
  CartModel({
    required super.productId,
    required super.image,
    required super.price,
    required super.productTitle,
    super.uomName,
    super.uomValue,
    super.userId,
    required super.variantId,
    required super.cartQuantity,
    super.mrp,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      productId: json['product_id'],
      image: json['image'],
      price: json['price'],
      productTitle: json['product_title'],
      uomName: json['uom_name'],
      uomValue: json['uom_value'],
      userId: json['user_d'],
      variantId: json['variant_id'],
      cartQuantity: json['cart_quantity'],
      mrp: json['mrp'],
    );
  }
}
