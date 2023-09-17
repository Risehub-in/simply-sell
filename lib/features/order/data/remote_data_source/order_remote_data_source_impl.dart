import 'dart:math';

import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:simply_sell/features/order/data/remote_data_source/order_remote_data_source.dart';

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final Razorpay razorpay;

  OrderRemoteDataSourceImpl({required this.razorpay});

  var razorpayOptions = {
    'key': 'rzp_test_3gVcn5TnJql0pg',
    'amount': 100,
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

  String generateRandom10DigitNumber() {
    Random random = Random();
    String randomDigits = '';

    for (int i = 0; i < 8; i++) {
      randomDigits += random.nextInt(10).toString();
    }

    return randomDigits;
  }

  @override
  Future<void> createOrder() async {
    //TODO Implement orderId Check in database
    String random10DigitNumber = generateRandom10DigitNumber();
    try {
      razorpay.open(razorpayOptions);
      razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
          (PaymentSuccessResponse response) {
        print(response.paymentId);
      });
    } catch (e) {
      razorpay.on(Razorpay.EVENT_PAYMENT_ERROR,
          (PaymentFailureResponse response) {
        print("Payment Failed"
            "Code: ${response.code}{response.message}\nMetadata:${response.error.toString()}");
      });
      razorpay.clear();
    }
  }
}
