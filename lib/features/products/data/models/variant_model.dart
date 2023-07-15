class Variant {
  final int id;
  final DateTime updatedAt;
  final double price;
  final bool? isAvailable;
  final String? sku;
  final int inventoryQuantity;

  Variant({
    required this.id,
    required this.updatedAt,
    required this.price,
    this.isAvailable,
    this.sku,
    required this.inventoryQuantity,
  });
}
