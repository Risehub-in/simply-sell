import 'package:simply_sell/features/order/data/models/order_model.dart';
import 'package:simply_sell/features/order/data/remote_data_source/order_remote_data_source.dart';
import 'package:simply_sell/features/order/domain/entities/order_entity.dart';
import 'package:simply_sell/features/order/domain/repository/order_repository.dart';
import 'dart:core';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource orderRemoteDataSource;
  OrderRepositoryImpl({required this.orderRemoteDataSource});

  @override
  Future<void> createOrder(OrderEntity orderEntity) async {
    await orderRemoteDataSource.createOrder(OrderModel(
      deliveryAddress: orderEntity.deliveryAddress,
      deliveryFee: orderEntity.deliveryFee,
      customerLatitude: orderEntity.customerLatitude,
      customerLongitude: orderEntity.customerLongitude,
      orderStatus: orderEntity.orderStatus,
      paymentId: orderEntity.paymentId,
      paymentAmount: orderEntity.paymentAmount,
    ));
  }
}
