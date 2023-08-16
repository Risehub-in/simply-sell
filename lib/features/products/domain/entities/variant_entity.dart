import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/products/domain/entities/uom_entity.dart';

class VariantEntity extends Equatable {
  final int id;
  final double price;
  final String? sku;
  final int productId;
  final UomEntity? uomName;
  final int? uomValue;

  VariantEntity({
    required this.id,
    required this.price,
    this.sku,
    required this.productId,
    this.uomValue,
    this.uomName,
  });

  @override
  List<Object?> get props => [
        id,
        price,
        sku,
        productId,
        uomName,
        uomValue,
      ];
}
