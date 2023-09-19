import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';

abstract class CartRepository {
  Future<void> addToCart(CartEntity cartEntity);

  Stream<List<CartEntity>> streamCart();

  Future<void> updateCartQuantity(int cartId, int cartQuantity);

  Future<void> deleteCartItem(int cartId);

  Future<void> clearCart();
}
