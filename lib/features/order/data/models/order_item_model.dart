import '../../domain/entities/order_item_entity.dart';

class OrderItemModel extends OrderItemEntity {
  OrderItemModel({
    required super.itemQuantity,
    required super.orderId,
    required super.variantId,
    required super.price,
  });
}
