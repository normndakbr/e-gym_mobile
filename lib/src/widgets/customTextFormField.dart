import 'package:e_gym_mobile/constants.dart';
import 'package:e_gym_mobile/src/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  TextEditingController textValue = TextEditingController();
  String? Function(String?)? validator;

  CustomTextFormField({
    super.key,
    required this.labelText,
    required this.textValue,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textValue,
      decoration: InputDecoration(
        focusColor: AppConstants.secondaryColor,
        labelText: labelText,
        labelStyle: TextStyle(color: AppConstants.secondaryColor),
      ),
      obscureText: obscureText,
      style: TextStyle(color: AppConstants.secondaryColor),
      validator: validator,
    );
  }
}
