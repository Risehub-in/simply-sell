import 'package:simply_sell/features/products/domain/entities/product_entity.dart';

import '../repositories/product_repository.dart';

class GetProductsByCategoryIdUsecase {
  final ProductRepository repository;

  GetProductsByCategoryIdUsecase({required this.repository});

  Future<List<ProductEntity>> call(int id) =>
      repository.getProductsByCategoryId(id);
}
