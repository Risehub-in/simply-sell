class VariantEntity {
  final int id;
  final DateTime updatedAt;
  final double price;
  final String? sku;
  final int inventoryQuantity;
  final int productId;
  final int uom;

  VariantEntity({
    required this.id,
    required this.updatedAt,
    required this.price,
    this.sku,
    required this.inventoryQuantity,
    required this.productId,
    required this.uom,
  });
}
