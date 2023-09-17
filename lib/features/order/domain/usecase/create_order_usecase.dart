import 'package:simply_sell/features/order/domain/entities/order_entity.dart';
import 'package:simply_sell/features/order/domain/repository/order_repository.dart';

class CreateOrderUsecase {
  final OrderRepository orderRepository;

  CreateOrderUsecase({required this.orderRepository});
  Future<void> call(OrderEntity orderEntity) =>
      orderRepository.createOrder(orderEntity);
}
