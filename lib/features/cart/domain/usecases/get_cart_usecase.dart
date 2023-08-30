import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';
import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';

class GetCartUsecase {
  final CartRepository cartRepository;

  GetCartUsecase({required this.cartRepository});

  Future<List<CartEntity>> call() => cartRepository.getCart();
}
