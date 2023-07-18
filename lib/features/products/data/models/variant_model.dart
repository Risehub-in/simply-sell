import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';
import 'package:intl/intl.dart';

class VariantModel extends VariantEntity {
  VariantModel({
    required super.id,
    required super.updatedAt,
    required super.price,
    required super.inventoryQuantity,
    required super.isAvailable,
    super.sku,
    required super.productId,
  });

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return VariantModel(
      id: json['id'],
      updatedAt:
          DateFormat("yyyy-MM-ddTHH:mm:ss.SSSSSSZ").parse(json['updated_at']),
      price: json['price'],
      inventoryQuantity: json['inventory_quantity'],
      isAvailable: json['is_available'],
      sku: json['sku'],
      productId: json['product_id'],
    );
  }
}
