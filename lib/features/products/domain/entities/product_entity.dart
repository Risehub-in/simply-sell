import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';

class ProductEntity extends Equatable {
  final int id;
  final String productTitle;
  final String? featuredImage;
  final String? description;
  final String? brandName;
  final List<VariantEntity> variants;

  ProductEntity({
    required this.id,
    required this.productTitle,
    this.featuredImage,
    this.description,
    this.brandName,
    required this.variants,
  });

  @override
  List<Object?> get props => [
        id,
        productTitle,
        featuredImage,
        description,
        variants,
      ];
}
