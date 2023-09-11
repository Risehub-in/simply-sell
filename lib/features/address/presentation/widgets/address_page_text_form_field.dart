import 'package:flutter/material.dart';

class AddAddressPageTextFormField extends StatelessWidget {
  const AddAddressPageTextFormField({
    required this.labelText,
    required this.controller,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.validator,
    super.key,
  });

  final String labelText;
  final TextInputAction? textInputAction;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black54, width: 1),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labelText,
      ),
    );
  }
}
