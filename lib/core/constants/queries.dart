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
      mrp
      product_id
      uom{
        uom_name
      }
      uom_value
      uom_packaging
    }
  }
}
''';

  static final cartSubscription = '''
      subscription CartSubscription {
  cart(order_by: {created_at: asc}) {
    product_id
    variant_id
    image
    price
    product_title
    uom_name
    uom_value
    user_id
    cart_quantity
    mrp
  }
}
  ''';

  static final updateCartQuery = '''
        mutation UpdateCartQuantity(\$variant_id: bigint!,
        \$cart_quantity: smallint!) {
          update_cart(where: {variant_id: {_eq: \$variant_id}},
          _set: {cart_quantity: \$cart_quantity}) {
            affected_rows
            }
          }
''';

  static final deleteCartItem = '''
    mutation delteCartItem(\$variant_id: bigint!) {
      delete_cart(where: {variant_id: {_eq: \$variant_id}}) {
        affected_rows
      }
    }

''';
}
