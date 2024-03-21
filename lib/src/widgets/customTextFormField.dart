import 'package:e_gym_mobile/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
