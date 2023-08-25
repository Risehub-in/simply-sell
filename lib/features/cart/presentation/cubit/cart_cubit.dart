import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/cart/domain/usecases/add_to_cart_usercase.dart';
import 'package:simply_sell/features/cart/domain/usecases/stream_cart_usecase.dart';
import '../../domain/entity/cart_entity.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final AddToCartUsecase addToCartUsecase;
  final StreamCartUsecase streamCartUsecase;
  late StreamSubscription<List<CartEntity>> _cartSubscription;
  CartCubit({
    required this.addToCartUsecase,
    required this.streamCartUsecase,
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

  void streamCart() {
    final cartStream = streamCartUsecase.call();

    _cartSubscription = cartStream.listen((cartItems) {
      emit(CartStateDone(cartItems: cartItems));
    }, onError: (error) {
      CartStateError(message: error);
    });
  }

  @override
  Future<void> close() {
    print('subscription is cancelled');
    _cartSubscription.cancel();
    return super.close();
  }
}
