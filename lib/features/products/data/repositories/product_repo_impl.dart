import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source.dart';
import 'package:simply_sell/features/products/domain/repositories/product_repository.dart';

import '../models/product_model.dart';

class ProductRepoImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepoImpl({required this.productRemoteDataSource});

  @override
  Future<List<ProductModel>> getProducts() async {
    return productRemoteDataSource.getProducts();
  }

  @override
  Future<ProductModel> getSingleProduct(int id) {
    return productRemoteDataSource.getSingleProduct(id);
  }

  @override
  Future<List<ProductModel>> getProductsByCategoryId(int id) {
    return productRemoteDataSource.getProductsByCategoryId(id);
  }
}
