import 'package:simply_sell/features/order/data/models/order_item_model.dart';
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
    await orderRemoteDataSource.createOrder(
      OrderModel(
        paymentResponseId: orderEntity.paymentResponseId,
        addressId: orderEntity.addressId,
        deliveryFee: orderEntity.deliveryFee,
        orderStatus: orderEntity.orderStatus,
        paymentAmount: orderEntity.paymentAmount,
        orderItems: orderEntity.orderItems
            .map(
              (orderItem) => OrderItemModel(
                itemQuantity: orderItem.itemQuantity,
                variantId: orderItem.variantId,
                price: orderItem.price,
              ),
            )
            .toList(),
      ),
    );
  }
}
