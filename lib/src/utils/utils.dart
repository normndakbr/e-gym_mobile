import 'package:flutter/material.dart';

class AppUtils {
  static double responsiveHeight(BuildContext context, height) {
    return MediaQuery.of(context).size.height * height;
  }

  static double responsiveWidth(BuildContext context, width) {
    return MediaQuery.of(context).size.width * width;
  }

  static EdgeInsets responsiveHorizontalPadding(
      BuildContext context, currentWidth) {
    double screenWidth = MediaQuery.of(context).size.width;
    double horizontalPadding = screenWidth * currentWidth;
    return EdgeInsets.symmetric(horizontal: horizontalPadding);
  }
}

class Validator {
  static String? Function(String?)? validateEmail(String value) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return 'Email / Member ID is required';
      }
      return null;
    };
  }

  static bool isValidEmail(String value) {
    final RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(value);
  }

  static String? Function(String?)? validatePassword(String value) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return 'Password is required';
      } else if (value.length < 6) {
        return 'Password must be at least 6 characters long';
      }
      return '';
    };
  }
}

class ModalDialog {
  static void show(
    BuildContext context, {
    required String dialogType,
    required String dialogText,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(dialogType),
          content: Text(dialogText),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
