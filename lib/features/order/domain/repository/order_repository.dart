import 'package:simply_sell/features/order/domain/entities/order_entity.dart';

abstract class OrderRepository {
  Future<void> createOrder(OrderEntity orderEntity);
  Future<List<OrderEntity>> fetchOrders();
}
