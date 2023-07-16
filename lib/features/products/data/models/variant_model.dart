import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';

class VariantModel extends VariantEntity {
  VariantModel({
    required super.id,
    required super.updatedAt,
    required super.price,
    required super.inventoryQuantity,
  });
}
