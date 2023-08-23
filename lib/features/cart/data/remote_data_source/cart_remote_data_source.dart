import 'package:simply_sell/features/cart/data/models/cart_model.dart';

abstract class CartRemoteDataSource {
  Future<void> addToCart(CartModel cartModel);

  Future<List<CartModel>> getCart();
}
