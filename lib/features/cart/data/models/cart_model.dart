import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';

class CartModel extends CartEntity {
  CartModel({
    super.id,
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
      id: json['id'],
      cartQuantity: json['cart_quantity'],
      userId: json['user_id'],
      variantId: json['variant']['id'],
      mrp: json['variant']['mrp']?.toDouble(),
      price: json['variant']['price'].toDouble(),
      uomValue: json['variant']['uom_value'],
      uomName: json['variant']['uom']['uom_name'],
      productId: json['variant']['product']['id'],
      image: json['variant']['product']['featured_image'],
      productTitle: json['variant']['product']['product_title'],
    );
  }
}
