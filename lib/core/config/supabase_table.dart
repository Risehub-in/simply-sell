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

class CategorySupabaseTable implements SupabaseTable {
  const CategorySupabaseTable();

  @override
  String get tableName => "categories";
  String get id => "id";
  String get createdAt => "created_at";
  String get categoryName => "category_name";
  String get categoryImage => "category_image";
}
