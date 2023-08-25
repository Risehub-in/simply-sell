import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';

class CartModel extends CartEntity {
  CartModel({
    required super.image,
    required super.price,
    required super.productTitle,
    super.uomName,
    super.uomValue,
    super.userId,
    required super.variantId,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      image: json['image'],
      price: json['price'],
      productTitle: json['product_title'],
      uomName: json['uom_name'],
      uomValue: json['uom_value'],
      userId: json['user_d'],
      variantId: json['variant_id'],
    );
  }
}
