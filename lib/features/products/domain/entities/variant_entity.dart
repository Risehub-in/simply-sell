import 'package:equatable/equatable.dart';

class VariantEntity extends Equatable {
  final int id;
  final double price;
  final double? mrp;
  final String? sku;
  final int productId;
  final String? uomName;
  final String? uomValue;
  final int? uom_packaging;

  VariantEntity({
    required this.id,
    required this.price,
    this.mrp,
    this.sku,
    required this.productId,
    this.uomName,
    this.uomValue,
    this.uom_packaging,
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
