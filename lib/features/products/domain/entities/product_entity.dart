import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/products/domain/entities/variant_entity.dart';

class ProductEntity extends Equatable {
  final int id;
  final DateTime createdAt;
  final String productTitle;
  final bool isAvailable;
  final String? featuredImage;
  final String? description;
  final List<VariantEntity> variants;

  ProductEntity({
    required this.id,
    required this.productTitle,
    required this.createdAt,
    required this.isAvailable,
    required this.variants,
    this.featuredImage,
    this.description,
  });

  @override
  List<Object?> get props => [
        id,
        productTitle,
        createdAt,
        isAvailable,
        featuredImage,
        description,
        variants,
      ];
}
