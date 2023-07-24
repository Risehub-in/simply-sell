import 'package:simply_sell/features/categories/domain/entity/category_entity.dart';
import 'package:simply_sell/features/categories/domain/repositories/category_repository.dart';

class GetCategoriesUsecase {
  final CategoryRepository categoriesRepository;

  GetCategoriesUsecase({required this.categoriesRepository});

  Future<List<CategoryEntity>> call() => categoriesRepository.getCategories();
}
