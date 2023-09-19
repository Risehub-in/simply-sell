import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';

class UpdateCartQuantityUsecase {
  final CartRepository cartRepository;

  UpdateCartQuantityUsecase({required this.cartRepository});
  Future<void> call(int cartId, int cartQuantity) =>
      cartRepository.updateCartQuantity(cartId, cartQuantity);
}
