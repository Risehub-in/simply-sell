import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import 'package:simply_sell/core/constants/app_defaults.dart';
import 'package:simply_sell/features/auth/presentation/cubit/app_auth_cubit.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({
    super.key,
    required this.phone,
  });

  final int phone;
  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _phoneController = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;

  String currentText = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _focusNode.requestFocus();
    signInWithPhone();
    print(widget.phone);
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  Future signInWithPhone() async {
    var response = await context
        .read<AppAuthCubit>()
        .signInWithPhone('${AppDefaults.countryCode}${widget.phone}');
  }

  Future verfyOtpAndSignIn() async {
    await context.read<AppAuthCubit>().verifyOtpAndSignIn(
        '${AppDefaults.countryCode}${widget.phone}', _phoneController.text);
    context.go('/');
  }

  @override
  void dispose() {
    errorController!.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.primary,
        title: Text('Verify'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.horizontalPadding * 1.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24),
            Text(
              'Phone Number Verification',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Text('Enter the code sent to +91 ${widget.phone}'),
            SizedBox(height: 24),
            Form(
              key: _formKey,
              child: PinCodeTextField(
                focusNode: _focusNode,
                keyboardType: TextInputType.number,
                controller: _phoneController,
                enablePinAutofill: true,
                appContext: context,
                length: 6,
                pinTheme: PinTheme(
                  borderRadius: BorderRadius.circular(4),
                  inactiveBorderWidth: 1,
                  activeBorderWidth: 1,
                  fieldWidth: 40,
                  shape: PinCodeFieldShape.box,
                  selectedColor: AppColors.primary,
                  inactiveColor: AppColors.placeholder,
                ),
                animationDuration: Duration(milliseconds: 300),
                onCompleted: (_) => verfyOtpAndSignIn(),
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  return true;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
