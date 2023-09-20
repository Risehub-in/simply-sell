import 'package:simply_sell/features/order/domain/entities/order_entity.dart';

import 'order_item_model.dart';

class OrderModel extends OrderEntity {
  OrderModel({
    int? id,
    DateTime? dateTime,
    String? userId,
    required int addressId,
    int? paymentResponseId,
    required double deliveryFee,
    required double paymentAmount,
    String? orderStatus,
    required List<OrderItemModel> orderItems,
  }) : super(
          id: id,
          dateTime: dateTime,
          addressId: addressId,
          userId: userId,
          deliveryFee: deliveryFee,
          orderStatus: orderStatus,
          paymentAmount: paymentAmount,
          paymentResponseId: paymentResponseId,
          orderItems: orderItems,
        );
}
