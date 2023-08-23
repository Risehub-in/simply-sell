import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/cart/domain/usecases/add_to_cart_usercase.dart';
import 'package:simply_sell/features/cart/domain/usecases/get_cart_usecase.dart';

import '../../domain/entity/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final AddToCartUsecase addToCartUsecase;
  final GetCartUsecase getCartUsecase;
  CartCubit({
    required this.addToCartUsecase,
    required this.getCartUsecase,
  }) : super(CartInitial()) {
    getCart();
  }

  Future<void> addToCart(CartEntity cart) async {
    try {
      await addToCartUsecase.call(cart);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> getCart() async {
    try {
      emit(CartStateLoading());
      List<CartEntity> carts = await getCartUsecase.call();
      emit(CartStateDone(cartEntity: carts));
    } catch (e) {
      print(e.toString());
      emit(CartStateError(message: e.toString()));
    }
  }
}
