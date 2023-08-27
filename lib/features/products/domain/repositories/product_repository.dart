import 'package:simply_sell/features/products/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProductsByCategoryId(int id);
}
