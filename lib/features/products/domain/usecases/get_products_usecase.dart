import 'package:simply_sell/features/products/domain/entities/product_entity.dart';
import 'package:simply_sell/features/products/domain/repositories/product_repository.dart';

class GetProductsUseCase {
  final ProductRepository _repository;

  GetProductsUseCase({required ProductRepository repository})
      : _repository = repository;

  Future<List<ProductEntity>> call() => _repository.getProducts();
}
