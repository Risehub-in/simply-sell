import 'package:simply_sell/features/categories/domain/entity/category_entity.dart';

abstract class CategoryRepository {
  Future<List<CategoryEntity>> getCategories();
}
