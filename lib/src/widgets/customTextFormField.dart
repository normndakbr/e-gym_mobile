import 'package:e_gym_mobile/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  TextEditingController value = TextEditingController();

  CustomTextFormField({
    super.key,
    required this.labelText,
    required this.value,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: value,
      decoration: InputDecoration(
        focusColor: AppConstants.secondaryColor,
        labelText: labelText,
        labelStyle: TextStyle(color: AppConstants.secondaryColor),
      ),
      obscureText: obscureText,
      style: TextStyle(color: AppConstants.secondaryColor),
    );
  }
}
