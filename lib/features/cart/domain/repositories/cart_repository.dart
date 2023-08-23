import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';

abstract class CartRepository {
  Future<void> addToCart(CartEntity cartEntity);

  Future<List<CartEntity>> getCart();
}