import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';

class ClearCartUsecase {
  final CartRepository cartRepository;

  ClearCartUsecase({required this.cartRepository});

  Future<void> call() => cartRepository.clearCart();
}
