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

  int generateRandom10DigitNumber() {
    Random random = Random();
    int randomDigits = 0;

    for (int i = 0; i < 10; i++) {
      randomDigits += random.nextInt(10);
    }

    return randomDigits;
  }

  @override
  Future<void> createOrder(OrderModel order) async {
    final random = Random();
    final randomDigits = List.generate(10, (index) => random.nextInt(10));
    final randomString = randomDigits.join();

    final orderId = int.parse(randomString);
    print(orderId);

    List<Input$order_items_insert_input> orderItems =
        order.orderItems.map((orderItem) {
      return Input$order_items_insert_input(
        user_id: supabase.client.auth.currentSession!.user.id,
        item_quantity: orderItem.itemQuantity,
        order_id: orderId,
        variant_id: orderItem.variantId,
        price: orderItem.price,
      );
    }).toList();

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

    razorpay.on(
      Razorpay.EVENT_PAYMENT_SUCCESS,
      (PaymentSuccessResponse response) async {
        print('Payment Success ${response.paymentId}');
        final results = await hasuraService.client.mutate$CreateOrder(
          Options$Mutation$CreateOrder(
            variables: Variables$Mutation$CreateOrder(
              customer_latitude: order.customerLatitude,
              customer_longitude: order.customerLongitude,
              delivery_address: order.deliveryAddress,
              id: orderId,
              delivery_fee: order.deliveryFee,
              order_status: order.orderStatus,
              user_id: supabase.client.auth.currentSession!.user.id,
              payment_id: response.paymentId!,
              payment_amount: order.paymentAmount,
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
}
