import 'dart:math';

import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/features/order/data/models/order_model.dart';
import 'package:simply_sell/features/order/data/order.graphql.dart';
import 'package:simply_sell/features/order/data/remote_data_source/order_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../schema.graphql.dart';

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final Razorpay razorpay;
  final HasuraService hasuraService;
  final Supabase supabase;

  OrderRemoteDataSourceImpl(
      {required this.razorpay,
      required this.hasuraService,
      required this.supabase});

  @override
  Future<void> createOrder(OrderModel order) async {
    // implement orderid check
    final random = Random();
    final randomDigits = List.generate(10, (index) => random.nextInt(10));
    final randomString = randomDigits.join();

    var razorpayOptions = {
      'key': 'rzp_test_3gVcn5TnJql0pg',
      'amount': order.paymentAmount * 100,
      'name': 'Heerson',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'config': {
        'display': {
          'hide': [
            {'method': 'wallet'},
            {'method': 'paylater'}
          ]
        }
      }
    };

    final orderId = int.parse(randomString);

    List<Input$order_items_insert_input> orderItems =
        order.orderItems.map((orderItem) {
      return Input$order_items_insert_input(
        product_id: orderItem.productId,
        item_quantity: orderItem.itemQuantity,
        order_id: orderId,
        variant_id: orderItem.variantId,
        price: orderItem.price,
      );
    }).toList();

    razorpay.on(
      Razorpay.EVENT_PAYMENT_SUCCESS,
      (PaymentSuccessResponse response) async {
        print('Payment Success ${response.paymentId}');
        final results = await hasuraService.client.mutate$CreateOrder(
          Options$Mutation$CreateOrder(
            variables: Variables$Mutation$CreateOrder(
              id: orderId,
              delivery_fee: order.deliveryFee,
              user_id: supabase.client.auth.currentSession!.user.id,
              address_id: order.addressId,
              payment_amount: order.paymentAmount,
              payment_response_id: response.paymentId!,
              order_items: orderItems,
            ),
          ),
        );
        if (!results.hasException) {
          print('affected row ${results.data}');
        } else {
          print(
            results.exception.toString(),
          );
        }
        razorpay.clear();
      },
    );

    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR,
        (PaymentFailureResponse response) {
      print("Payment Failed"
          "Code: ${response.code}{response.message}\nMetadata:${response.error.toString()}");
      razorpay.clear();
    });
    razorpay.open(razorpayOptions);
  }

  @override
  Future<List<OrderModel>> fetchOrders() {
    // TODO: implement fetchOrders
    throw UnimplementedError();
  }
}
