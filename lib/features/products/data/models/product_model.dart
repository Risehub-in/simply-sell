import 'package:simply_sell/features/products/data/models/variant_model.dart';
import 'package:simply_sell/features/products/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.id,
    required super.productTitle,
    super.featuredImage,
    super.description,
    super.brandName,
    required super.variants,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> variantsJson = json['variants'];
    List<VariantModel> variants = variantsJson.map((v) {
      return VariantModel.fromJson(v);
    }).toList();
    return ProductModel(
      id: json['id'],
      productTitle: json['product_title'],
      featuredImage: json['featured_image'],
      description: json['description'],
      brandName: json['brand']['brand_name'],
      variants: variants,
    );
  }
}
