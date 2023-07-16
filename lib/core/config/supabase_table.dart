abstract class SupabaseTable {
  SupabaseTable();
  String get tableName;
}

class ProductSupabaseTable implements SupabaseTable {
  const ProductSupabaseTable();

  @override
  String get tableName => "products";
  String get idColumn => "id";
  String get productTitle => "product_title";
  String get isAvailable => "is_available";
  String get categoryId => "category_id";
  String get featured_image => "featured_image";
  String get decription => "description";
}
