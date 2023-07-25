import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';
import 'package:intl/intl.dart';

class VariantModel extends VariantEntity {
  VariantModel({
    required super.id,
    required super.updatedAt,
    required super.price,
    required super.inventoryQuantity,
    super.sku,
    required super.productId,
    required super.uom,
  });

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return VariantModel(
      id: json['id'],
      updatedAt:
          DateFormat("yyyy-MM-ddTHH:mm:ss.SSSSSSZ").parse(json['updated_at']),
      price: json['price'],
      inventoryQuantity: json['inventory_quantity'],
      sku: json['sku'],
      productId: json['product_id'],
      uom: json['uom'],
    );
  }
}
