import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts();
  Future<List<ProductModel>> getProductsByCategoryId(int id);
  Future<ProductModel> getSingleProduct(int id);
}
