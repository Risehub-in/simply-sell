import 'package:equatable/equatable.dart';

class VariantEntity extends Equatable {
  final int id;
  final double price;
  final String? sku;
  final int productId;
  final String? uomName;
  final int? uomValue;

  VariantEntity({
    required this.id,
    required this.price,
    this.sku,
    required this.productId,
    this.uomName,
    this.uomValue,
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
