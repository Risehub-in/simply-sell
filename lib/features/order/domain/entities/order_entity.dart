import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/order/domain/entities/order_item_entity.dart';

class OrderEntity extends Equatable {
  final int? id;
  final DateTime? dateTime;
  final String? userId;
  final int addressId;
  final int? paymentResponseId;
  final double deliveryFee;
  final double paymentAmount;
  final String? orderStatus;
  final List<OrderItemEntity> orderItems;

  OrderEntity({
    this.id,
    this.dateTime,
    this.userId,
    required this.addressId,
    required this.deliveryFee,
    required this.paymentAmount,
    this.orderStatus,
    this.paymentResponseId,
    required this.orderItems,
  });

  @override
  List<Object?> get props => [
        id,
        dateTime,
        userId,
        addressId,
        deliveryFee,
        paymentAmount,
        orderStatus,
        paymentResponseId,
        orderItems,
      ];
}
