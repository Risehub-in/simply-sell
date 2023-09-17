import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../cubit/order_cubit.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<OrderCubit>().createOrder();
            // Razorpay razorpay = Razorpay();
            // var options = {
            //   'key': 'rzp_test_3gVcn5TnJql0pg',
            //   'amount': 100,
            //   'name': 'Acme Corp.',
            //   'description': 'Fine T-Shirt',
            //   'retry': {'enabled': true, 'max_count': 1},
            //   'send_sms_hash': true,
            //   'prefill': {
            //     'contact': '8888888888',
            //     'email': 'test@razorpay.com'
            //   },
            //   'external': {
            //     'wallets': ['paytm']
            //   }
            // };
            // razorpay.on(
            //     Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
            // razorpay.on(
            //     Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
            // razorpay.on(
            //     Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);
            // razorpay.open(options);
          },
          child: Text('Pay'),
        ),
      ),
    );
  }

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    showAlertDialog(context, "Payment Failed",
        "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    print(response);
    showAlertDialog(
        context, "Payment Successful", "Payment ID: ${response.paymentId}");
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
        context, "External Wallet Selected", "${response.walletName}");
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    // set up the buttons
    Widget continueButton = ElevatedButton(
      child: const Text("Continue"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
