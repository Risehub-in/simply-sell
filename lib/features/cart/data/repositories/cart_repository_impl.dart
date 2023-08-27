import 'package:simply_sell/features/cart/data/remote_data_source/cart_remote_data_source.dart';
import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';
import 'package:simply_sell/features/cart/domain/repositories/cart_repository.dart';
import '../models/cart_model.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource cartRemoteDataSource;

  CartRepositoryImpl({required this.cartRemoteDataSource});

  @override
  Future<void> addToCart(CartEntity cart) async {
    final cartEntity = CartModel(
      image: cart.image,
      price: cart.price,
      productTitle: cart.productTitle,
      uomName: cart.uomName,
      uomValue: cart.uomValue,
      userId: cart.userId,
      variantId: cart.variantId,
      cartQuantity: cart.cartQuantity,
      mrp: cart.mrp,
    );
    await cartRemoteDataSource.addToCart(cartEntity);
  }

  @override
  Future<List<CartModel>> getCart() async {
    throw UnimplementedError();
  }

  @override
  Stream<List<CartEntity>> streamCart() {
    return cartRemoteDataSource.streamCart();
  }

  @override
  Future<void> updateCartQuantity(int variantId, int cartQuantity) async {
    await cartRemoteDataSource.updateCartQuantity(variantId, cartQuantity);
  }

  @override
  Future<void> deleteCartItem(int variantId) async {
    await cartRemoteDataSource.deleteCartItem(variantId);
  }
}
