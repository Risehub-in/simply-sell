class GqlQueries {
  // Categories
  static final String getCategories = '''
  query MyQuery {
  categories {
    id
    category_image
    category_name
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
    variants {
      id
      sku
      price
      product_id
    }
  }
}
''';
}
