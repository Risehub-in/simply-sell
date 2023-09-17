import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/order/domain/usecase/create_order_usecase.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  final CreateOrderUsecase createOrderUsecase;

  OrderCubit({required this.createOrderUsecase}) : super(OrderInitial());

  Future<void> createOrder() async {
    createOrderUsecase.call();
  }
}
