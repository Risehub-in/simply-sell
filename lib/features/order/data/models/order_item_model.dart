import 'package:simply_sell/features/products/data/models/variant_model.dart';

import '../../domain/entities/order_item_entity.dart';

class OrderItemModel extends OrderItemEntity {
  final List<VariantModel>? variants;
  OrderItemModel({
    required super.productId,
    required super.itemQuantity,
    super.orderId,
    required super.variantId,
    required super.price,
    this.variants,
  });
}
