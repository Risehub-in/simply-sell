class Product {
  final int id;
  final DateTime createdAt;
  final String productTitle;
  final bool isAvailable;
  final String? featuredImage;
  final String? description;
  final String? brand;

  Product({
    required this.id,
    required this.productTitle,
    required this.createdAt,
    required this.isAvailable,
    this.featuredImage,
    this.description,
    this.brand,
  });
}
