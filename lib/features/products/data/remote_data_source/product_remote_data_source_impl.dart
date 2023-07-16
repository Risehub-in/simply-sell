import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/config/supabase_table.dart';
import '../models/product_model.dart';

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Supabase supabase;
  final ProductSupabaseTable productSupabaseTable;

  ProductRemoteDataSourceImpl(
      {required this.supabase, required this.productSupabaseTable});

  @override
  Future<ProductModel> getSingleProduct(int id) async {
    try {
      final response = await supabase.client
          .from(productSupabaseTable.tableName)
          .select()
          .eq(productSupabaseTable.idColumn, id)
          .single();
      final productModel =
          ProductModel.fromJson(response as Map<String, dynamic>);
      return productModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      List<ProductModel> products = [];

      final response =
          await supabase.client.from(productSupabaseTable.tableName).select();
      for (var data in response) {
        ProductModel product = ProductModel.fromJson(data);
        products.add(product);
      }
      return products;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
