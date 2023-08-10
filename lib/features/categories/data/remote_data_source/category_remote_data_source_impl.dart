import 'package:hasura_connect/hasura_connect.dart';
import 'package:simply_sell/core/config/hasura_config.dart';
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

/*  @override
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
  }*/

  @override
  Future<List<CategoryModel>> getCategories() async { //Authorization token to be replaced by actual user token
    try{
      List<CategoryModel> categories = [];
      HasuraConnect hasuraConnect = HasuraConnect(HasuraConfig.url, headers: {
        "Authorization":"Bearer eyJhbGciOiJIUzI1NiIsImtpZCI6IlZ2RGwwR2ZhVEljaHhtb0YiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNjkxODYzOTQyLCJpYXQiOjE2OTEyNTkxNDIsImlzcyI6Imh0dHBzOi8vY2dxeWtsZ3hhY3B1Y2tqdG54bWYuc3VwYWJhc2UuY28vYXV0aC92MSIsInN1YiI6ImI5MWFkNWM2LTgzNzYtNGMzMC05ZmFjLTQ1MzQ0ODFhODUzYiIsImVtYWlsIjoiaGFyaXNoLmpuaWlAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJ4LWhhc3VyYS1hbGxvd2VkLXJvbGVzIjpbInVzZXIiLCJhZG1pbiJdLCJ4LWhhc3VyYS1kZWZhdWx0LXJvbGUiOiJ1c2VyIn0sInJvbGUiOiJhdXRoZW50aWNhdGVkIiwiYWFsIjoiYWFsMSIsImFtciI6W3sibWV0aG9kIjoib3RwIiwidGltZXN0YW1wIjoxNjkxMjU5MTQyfV0sInNlc3Npb25faWQiOiJkNjdmNWExNy00NzEyLTRiY2MtYTk5Yy00ZjVmZGI4OWU0NGEifQ.VJrsI5ki6zOmVYl9PhF4OVXIhBry_xmf8pDiF33mTpY",
        "x-hasura-role": "admin"
      });
      print('Call Hasura Query');
      final response = await hasuraConnect.query(
        '''
         query MyQuery {
          categories {
            id
            category_name
            category_image
            created_at
          }
        }
        '''
      );
      print(response);
      if (response.containsKey('data')) {
        List<dynamic> categoryData = response['data']['categories'];
        for (var data in categoryData) {
          CategoryModel product = CategoryModel.fromJson(data);
          categories.add(product);
        }
      }
      return categories;
    } catch (e) {
      print('Error : ${e.toString()}');
      rethrow;
    }
  }
}
