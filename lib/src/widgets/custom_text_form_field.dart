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
        labelText: labelText,
      ),
      obscureText: obscureText,
    );
  }
}
