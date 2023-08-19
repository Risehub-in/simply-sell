part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductStateInitial extends ProductState {}

class ProductStateError extends ProductState {
  final String message;

  ProductStateError({required this.message});

  @override
  List<Object> get props => [message];
}

class ProductStateDone extends ProductState {
  final List<ProductEntity> products;

  ProductStateDone({required this.products});

  @override
  List<Object> get props => [products];
}
