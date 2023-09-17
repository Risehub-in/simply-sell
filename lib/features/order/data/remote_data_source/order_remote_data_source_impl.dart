import 'dart:math';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/features/order/data/models/order_model.dart';
import 'package:simply_sell/features/order/data/order_graphql_queries.dart';
import 'package:simply_sell/features/order/data/remote_data_source/order_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final Razorpay razorpay;
  final HasuraService hasuraService;
  final Supabase supabase;

  OrderRemoteDataSourceImpl(
      {required this.razorpay,
      required this.hasuraService,
      required this.supabase});

  String generateRandom10DigitNumber() {
    Random random = Random();
    String randomDigits = '';

    for (int i = 0; i < 10; i++) {
      randomDigits += random.nextInt(10).toString();
    }

    return randomDigits;
  }

  @override
  Future<void> createOrder(OrderModel order) async {
    //TODO Implement orderId Check in database
    String random10DigitNumber = generateRandom10DigitNumber();
    final orderId = random10DigitNumber;

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
        final results = await hasuraService.client.mutate(
          MutationOptions(
              document: gql(OrderGraphQLQueries.createOrderMutation),
              variables: {
                'customer_latitude': order.customerLatitude,
                'customer_longitude': order.customerLongitude,
                'delivery_address': order.deliveryAddress,
                'delivery_fee': order.deliveryFee,
                'id': orderId,
                'order_status': order.orderStatus,
                'user_id': supabase.client.auth.currentSession?.user.id,
                'payment_id': response.paymentId,
                'payment_amount': order.paymentAmount,
              }),
        );
        if (!results.hasException) {
          print(results.data);
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
