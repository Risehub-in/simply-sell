import 'package:simply_sell/features/order/domain/entities/order_entity.dart';

class OrderModel extends OrderEntity {
  OrderModel({
    required super.id,
    required super.dateTime,
    required super.userId,
    required super.deliveryAddress,
    required super.deliveryFee,
    required super.customerLatitude,
    required super.customerLongitude,
    required super.orderStatus,
  });
}
