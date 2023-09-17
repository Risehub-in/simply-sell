import 'package:equatable/equatable.dart';

class OrderItemEntity extends Equatable {
  final int itemQuantity;
  final int orderId;
  final int variantId;
  final double price;

  OrderItemEntity({
    required this.itemQuantity,
    required this.orderId,
    required this.variantId,
    required this.price,
    required,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
