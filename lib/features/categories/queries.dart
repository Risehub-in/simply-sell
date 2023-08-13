class GQLQueries {
  static final String getCategories = '''
query MyQuery {
  categories {
    id
    category_image
    category_name
    created_at
  }
}
''';
}
