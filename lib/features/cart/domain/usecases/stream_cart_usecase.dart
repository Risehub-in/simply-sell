import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';
import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';

class StreamCartUsecase {
  final CartRepository cartRepository;

  StreamCartUsecase({required this.cartRepository});

  Stream<List<CartEntity>> call() => cartRepository.streamCart();
}
