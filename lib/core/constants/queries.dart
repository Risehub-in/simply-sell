class GqlQueries {
  // Categories
  static final String getCategories = '''
 query getCategories {
  categories(where: {products: {id: {_is_null: false}}}) {
    category_image
    category_name
    created_at
    id
  }
}

''';

  // Products
  static final String getProducts = '''
  query MyQuery {
  products {
    id
    product_title
    featured_image
    description
    variants {
      id
      sku
      price
      product_id
    }
  }
}
''';

  static final String getProductsByCategoryId = '''
  query GetProductsByCategoryId(\$category_id: bigint!) {
  products(where: {category_id: {_eq: \$category_id}}) {
    id
    created_at
    product_title
    featured_image
    description
    brand {
      brand_name
    }
    variants {
      id
      sku
      price
      product_id
      uom{
        uom_name
      }
      uom_value
    }
  }
}
''';
}
