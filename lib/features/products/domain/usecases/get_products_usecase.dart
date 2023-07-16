import 'package:simply_sell/features/products/domain/entities/product_entity.dart';
import 'package:simply_sell/features/products/domain/repositories/product_repository.dart';

class GetProductsUseCase {
  GetProductsUseCase({required ProductRepository repository})
      : _repository = repository;

  final ProductRepository _repository;

  Future<List<ProductEntity>> call() => _repository.getProducts();
}
