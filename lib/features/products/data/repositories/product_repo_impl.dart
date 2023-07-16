import 'package:simply_sell/features/products/data/remote_data_source/product_remote_data_source.dart';
import 'package:simply_sell/features/products/domain/entities/product_entity.dart';
import 'package:simply_sell/features/products/domain/repositories/product_repository.dart';

class ProductRepoImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepoImpl({required this.productRemoteDataSource});

  @override
  Future<List<ProductEntity>> getProducts() async {
    return productRemoteDataSource.getProducts();
  }

  @override
  Future<ProductEntity> getSingleProduct(int id) {
    return productRemoteDataSource.getSingleProduct(id);
  }
}
