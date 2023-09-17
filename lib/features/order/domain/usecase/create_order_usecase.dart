import 'package:simply_sell/features/order/domain/repository/order_repository.dart';

class CreateOrderUsecase {
  final OrderRepository orderRepository;

  CreateOrderUsecase({required this.orderRepository});
  Future<void> call() => orderRepository.createOrder();
}
