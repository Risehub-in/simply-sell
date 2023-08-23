import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';

import '../entity/cart_entity.dart';

class AddToCartUsecase {
  final CartRepository cartRepository;

  AddToCartUsecase({required this.cartRepository});

  Future<void> call(CartEntity cart) => cartRepository.addToCart(cart);
}
