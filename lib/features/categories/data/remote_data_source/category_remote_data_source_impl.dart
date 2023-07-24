import 'package:simply_sell/core/config/supabase_table.dart';
import 'package:simply_sell/features/categories/data/models/category_model.dart';
import 'package:simply_sell/features/categories/data/remote_data_source/category_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final Supabase supabase;
  final CategorySupabaseTable categorySupabaseTable;

  CategoryRemoteDataSourceImpl({
    required this.supabase,
    required this.categorySupabaseTable,
  });
  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      List<CategoryModel> categories = [];

      final response =
          await supabase.client.from(categorySupabaseTable.tableName).select();
      for (var data in response) {
        CategoryModel product = CategoryModel.fromJson(data);
        categories.add(product);
      }
      return categories;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
