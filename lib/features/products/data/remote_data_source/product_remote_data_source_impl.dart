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
  Future<List<ProductModel>> getProducts() async {
    try {
      QueryResult queryResult = await hasuraService.client.query(
        QueryOptions(
          document: gql(GqlQueries.getProducts),
        ),
      );
      final productListData = List.from(queryResult.data?['products']);

      List<ProductModel> products = productListData
          .map((product) => ProductModel.fromJson(product))
          .toList();
      print(products);
      return products;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  @override
  Future<ProductModel> getSingleProduct(int id) {
    // TODO: implement getSingleProduct
    throw UnimplementedError();
  }

  @override
  Future<List<ProductModel>> getProductsByCategoryId(int id) async {
    try {
      QueryResult queryResult = await hasuraService.client.query(
        QueryOptions(document: gql(GqlQueries.getProducts), variables: {
          'category_id': id,
        }),
      );
      final productListData = List.from(queryResult.data?['products']);

      List<ProductModel> products = productListData
          .map((product) => ProductModel.fromJson(product))
          .toList();
      print(products);
      return products;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
