import 'package:simply_sell/features/products/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
  Future<List<ProductEntity>> getProductsByCategoryId(int id);
  Future<ProductEntity> getSingleProduct(int id);
}
