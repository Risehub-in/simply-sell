import 'package:simply_sell/features/order/domain/entities/order_entity.dart';

import 'order_item_model.dart';

class OrderModel extends OrderEntity {
  OrderModel({
    int? id,
    DateTime? dateTime,
    required String deliveryAddress,
    required double deliveryFee,
    required double customerLatitude,
    required double customerLongitude,
    required String orderStatus,
    required double paymentAmount,
    String? paymentId,
    required List<OrderItemModel> orderItems,
  }) : super(
          id: id,
          dateTime: dateTime,
          deliveryAddress: deliveryAddress,
          deliveryFee: deliveryFee,
          customerLatitude: customerLatitude,
          customerLongitude: customerLongitude,
          orderStatus: orderStatus,
          paymentAmount: paymentAmount,
          paymentId: paymentId,
          orderItems: orderItems,
        );
}
