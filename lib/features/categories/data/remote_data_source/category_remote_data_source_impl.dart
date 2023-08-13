import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/core/config/supabase_table.dart';
import 'package:simply_sell/features/categories/data/models/category_model.dart';
import 'package:simply_sell/features/categories/data/remote_data_source/category_remote_data_source.dart';
import 'package:simply_sell/features/categories/queries.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final Supabase supabase;
  final CategorySupabaseTable categorySupabaseTable;
  final HasuraService hasuraService;

  CategoryRemoteDataSourceImpl({
    required this.supabase,
    required this.categorySupabaseTable,
    required this.hasuraService,
  });

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      QueryResult queryResult = await hasuraService.client.query(
        QueryOptions(
          document: gql(GQLQueries.getCategories),
        ),
      );
      final categoryListData = List.from(queryResult.data?['categories']);
      List<CategoryModel> categories = categoryListData
          .map((category) => CategoryModel.fromJson(category))
          .toList();
      return categories;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  // @override
  // Future<List<CategoryModel>> getCategories() async {
  //   //Authorization token to be replaced by actual user token

  //     List<CategoryModel> categories = [];

  //     final response = await hasuraService.client.query(
  //       QueryOptions(document: gql(document))
  //     );
  //     print(response);

  // }
}
