import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';

class DeleteCartItemUsecase {
  final CartRepository cartRepository;

  DeleteCartItemUsecase({required this.cartRepository});

  Future<void> call(int cartId) => cartRepository.deleteCartItem(cartId);
}
