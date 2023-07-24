import 'package:simply_sell/features/categories/data/remote_data_source/category_remote_data_source.dart';
import 'package:simply_sell/features/categories/domain/repositories/category_repository.dart';
import '../models/category_model.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource categoryRemoteDataSource;

  CategoryRepositoryImpl({required this.categoryRemoteDataSource});
  @override
  Future<List<CategoryModel>> getCategories() {
    return categoryRemoteDataSource.getCategories();
  }
}
