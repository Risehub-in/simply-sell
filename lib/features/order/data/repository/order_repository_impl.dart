import 'package:simply_sell/features/order/data/remote_data_source/order_remote_data_source.dart';
import 'package:simply_sell/features/order/domain/repository/order_repository.dart';
import 'dart:core';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource orderRemoteDataSource;
  OrderRepositoryImpl({required this.orderRemoteDataSource});

  @override
  Future<void> createOrder() async {
    orderRemoteDataSource.createOrder();
  }
}
