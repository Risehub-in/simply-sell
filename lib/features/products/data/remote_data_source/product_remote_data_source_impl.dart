import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source.dart';
import '../../../../core/constants/queries.dart';
import '../models/product_model.dart';

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final HasuraService hasuraService;

  ProductRemoteDataSourceImpl({
    required this.hasuraService,
  });

  @override
  Future<List<ProductModel>> getProductsByCategoryId(int id) async {
    try {
      QueryResult queryResult = await hasuraService.client.query(
        QueryOptions(
            document: gql(GqlQueries.getProductsByCategoryId),
            variables: {
              'category_id': id,
            }),
      );
      final productListData = List.from(queryResult.data?['products']);
      print(queryResult.exception);

      List<ProductModel> products = productListData
          .map((product) => ProductModel.fromJson(product))
          .toList();
      return products;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
