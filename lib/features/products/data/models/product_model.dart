import 'package:intl/intl.dart';
import 'package:simply_sell/features/products/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.id,
    required super.productTitle,
    required super.createdAt,
    required super.isAvailable,
    super.featuredImage,
    super.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      createdAt:
          DateFormat("yyyy-MM-ddTHH:mm:ss.SSSSSSZ").parse(json['created_at']),
      productTitle: json['product_title'],
      isAvailable: json['is_available'],
      featuredImage: json['featured_image'],
      description: json['description'],
    );
  }
}
