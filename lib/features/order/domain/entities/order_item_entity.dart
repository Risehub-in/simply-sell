import 'package:equatable/equatable.dart';

class OrderItemEntity extends Equatable {
  final int itemQuantity;
  final int? orderId;
  final int variantId;
  final int productId;
  final double price;

  OrderItemEntity({
    required this.itemQuantity,
    this.orderId,
    required this.variantId,
    required this.productId,
    required this.price,
  });

  @override
  List<Object?> get props => [
        itemQuantity,
        orderId,
        variantId,
        productId,
        price,
      ];
}
