import 'package:equatable/equatable.dart';

class OrderEntity extends Equatable {
  final int id;
  final DateTime dateTime;
  final String userId;
  final String deliveryAddress;
  final double deliveryFee;
  final double customerLatitude;
  final double customerLongitude;
  final String orderStatus;

  OrderEntity({
    required this.id,
    required this.dateTime,
    required this.userId,
    required this.deliveryAddress,
    required this.deliveryFee,
    required this.customerLatitude,
    required this.customerLongitude,
    required this.orderStatus,
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
      ];
}
