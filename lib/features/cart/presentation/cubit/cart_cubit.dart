import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/cart/domain/usecases/add_to_cart_usercase.dart';
import 'package:simply_sell/features/cart/domain/usecases/clear_cart_usecase.dart';
import 'package:simply_sell/features/cart/domain/usecases/stream_cart_usecase.dart';
import 'package:simply_sell/features/cart/domain/usecases/update_cart_quantity_usecase.dart';
import '../../domain/entity/cart_entity.dart';
import '../../domain/usecases/delete_cart_item_usecase.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final AddToCartUsecase addToCartUsecase;
  final StreamCartUsecase streamCartUsecase;
  final UpdateCartQuantityUsecase updateCartQuantityUsecase;
  final DeleteCartItemUsecase deleteCartItemUsecase;
  final ClearCartUsecase clearCartUsecase;
  late StreamSubscription cartSubscription;

  CartCubit({
    required this.addToCartUsecase,
    required this.streamCartUsecase,
    required this.updateCartQuantityUsecase,
    required this.deleteCartItemUsecase,
    required this.clearCartUsecase,
  }) : super(CartStateLoading()) {
    streamCart();
  }

  Future<void> addToCart(CartEntity cart) async {
    try {
      await addToCartUsecase.call(cart);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> updateCartQuantity(int cartId, int cartQuantity) async {
    try {
      updateCartQuantityUsecase.call(cartId, cartQuantity);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> deleteCartItem(int cartId) async {
    try {
      await deleteCartItemUsecase.call(cartId);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> clearCart() async {
    try {
      await clearCartUsecase.call();
    } catch (e) {
      emit(CartStateError(message: e.toString()));
    }
  }

  streamCart() {
    cartSubscription = streamCartUsecase.call().listen((cartItems) {
      emit(CartStateLoading());
      emit(CartStateDone(cartItems: cartItems));
    });
  }

  @override
  Future<void> close() {
    print('close');
    cartSubscription.cancel();
    return super.close();
  }
}
