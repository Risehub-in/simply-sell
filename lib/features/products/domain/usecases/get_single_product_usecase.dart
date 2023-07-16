import 'package:simply_sell/features/products/domain/entities/product_entity.dart';

import '../repositories/product_repository.dart';

class GetSingleProductUsecase {
  GetSingleProductUsecase({required ProductRepository repository})
      : _repository = repository;

  final ProductRepository _repository;

  Future<ProductEntity> call(int id) => _repository.getSingleProduct(id);
}
