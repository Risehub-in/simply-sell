import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final int? id;
  final int productId;
  final String image;
  final double price;
  final double? mrp;
  final String productTitle;
  final String? uomName;
  final String? uomValue;
  final String? userId;
  final int variantId;
  final int cartQuantity;

  CartEntity({
    this.id,
    required this.productId,
    required this.image,
    required this.price,
    required this.productTitle,
    this.uomName,
    this.uomValue,
    this.userId,
    required this.variantId,
    required this.cartQuantity,
    this.mrp,
  });

  @override
  List<Object?> get props => [
        id,
        productId,
        image,
        price,
        productTitle,
        uomName,
        uomValue,
        userId,
        variantId,
        mrp,
      ];
}
