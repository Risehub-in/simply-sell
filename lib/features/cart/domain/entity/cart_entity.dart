import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final String image;
  final double price;
  final String productTitle;
  final String? uomName;
  final String? uomValue;
  final String? userId;
  final int variantId;

  CartEntity({
    required this.image,
    required this.price,
    required this.productTitle,
    this.uomName,
    this.uomValue,
    this.userId,
    required this.variantId,
  });

  @override
  List<Object?> get props => [
        image,
        price,
        productTitle,
        uomName,
        uomValue,
        userId,
        variantId,
      ];
}
