import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/order/domain/entities/order_item_entity.dart';

class OrderEntity extends Equatable {
  final int? id;
  final DateTime? dateTime;
  final String? userId;
  final String deliveryAddress;
  final double deliveryFee;
  final double customerLatitude;
  final double customerLongitude;
  final String? orderStatus;
  final String? paymentId;
  final double paymentAmount;
  final List<OrderItemEntity>? orderItems;

  OrderEntity({
    this.id,
    this.dateTime,
    this.userId,
    required this.deliveryAddress,
    required this.deliveryFee,
    required this.customerLatitude,
    required this.customerLongitude,
    required this.orderStatus,
    this.paymentId,
    required this.paymentAmount,
    this.orderItems,
  });

  @override
  List<Object?> get props => [
        id,
        dateTime,
        userId,
        deliveryAddress,
        deliveryFee,
        customerLatitude,
        customerLongitude,
        orderStatus,
        paymentId,
        paymentAmount,
        orderItems,
      ];
}
