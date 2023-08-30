import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';

class VariantModel extends VariantEntity {
  VariantModel({
    required super.id,
    required super.price,
    super.mrp,
    required super.productId,
    super.sku,
    super.uomName,
    super.uomValue,
    super.uomPackaging,
  });

  factory VariantModel.fromJson(Map<String, dynamic> json) {
    return VariantModel(
      id: json['id'],
      price: json['price'],
      mrp: json['mrp']?.toDouble(),
      sku: json['sku'],
      productId: json['product_id'],
      uomName: json['uom']['uom_name'],
      uomValue: json['uom_value'],
      uomPackaging: json['uom_packaging'],
    );
  }
}
