import '../models/order_model.dart';

abstract class OrderRemoteDataSource {
  Future<void> createOrder(OrderModel orderModel);
  Future<List<OrderModel>> fetchOrders();
}
