import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/cart/domain/usecases/add_to_cart_usercase.dart';
import 'package:simply_sell/features/cart/domain/usecases/stream_cart_usecase.dart';
import 'package:simply_sell/features/cart/domain/usecases/update_cart_quantity_usecase.dart';
import '../../../domain/entity/cart_entity.dart';
import '../../../domain/usecases/delete_cart_item_usecase.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final AddToCartUsecase addToCartUsecase;
  final StreamCartUsecase streamCartUsecase;
  final UpdateCartQuantityUsecase updateCartQuantityUsecase;
  final DeleteCartItemUsecase deleteCartItemUsecase;

  CartCubit({
    required this.addToCartUsecase,
    required this.streamCartUsecase,
    required this.updateCartQuantityUsecase,
    required this.deleteCartItemUsecase,
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

  Future<void> updateCartQuantity(int variantId, int cartQuantity) async {
    try {
      updateCartQuantityUsecase.call(variantId, cartQuantity);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> deleteCartItem(int variantId) async {
    try {
      await deleteCartItemUsecase.call(variantId);
    } catch (e) {
      print(e.toString());
    }
  }

  streamCart() {
    streamCartUsecase.call().listen((cartItems) {
      emit(CartStateLoading());
      emit(CartStateDone(cartItems: cartItems));
    });
  }
}
