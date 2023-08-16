import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';

class VariantModel extends VariantEntity {
  VariantModel({
    required super.id,
    required super.price,
    required super.productId,
    super.sku,
  });

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return VariantModel(
      id: json['id'],
      price: json['price'],
      sku: json['sku'],
      productId: json['product_id'],
    );
  }
}
