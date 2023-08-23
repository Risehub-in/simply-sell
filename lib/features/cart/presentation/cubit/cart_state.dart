part of 'cart_cubit.dart';

sealed class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}

final class CartStateLoading extends CartState {}

final class CartStateDone extends CartState {
  final List<CartEntity> cartEntity;

  CartStateDone({required this.cartEntity});

  @override
  List<Object> get props => [cartEntity];
}

final class CartStateError extends CartState {
  final String message;

  CartStateError({required this.message});

  @override
  List<Object> get props => [message];
}
