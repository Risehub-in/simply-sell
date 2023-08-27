import 'package:simply_sell/features/cart/data/models/cart_model.dart';

abstract class CartRemoteDataSource {
  Future<void> addToCart(CartModel cartModel);

  Stream<List<CartModel>> streamCart();

  Future<void> updateCartQuantity(int variantId, int cartQuantity);

  Future<void> deleteCartItem(int variantId);
}
