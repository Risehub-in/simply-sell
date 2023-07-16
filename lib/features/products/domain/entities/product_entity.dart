import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final DateTime createdAt;
  final String productTitle;
  final bool isAvailable;
  final String? featuredImage;
  final String? description;

  ProductEntity({
    required this.id,
    required this.productTitle,
    required this.createdAt,
    required this.isAvailable,
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
      ];
}
