import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final int variantId;
  final String userId;
  final String productTitle;
  final double price;

  CartEntity({
    required this.variantId,
    required this.userId,
    required this.productTitle,
    required this.price,
  });

  @override
  List<Object?> get props => [
        variantId,
        userId,
        productTitle,
        price,
      ];
}
