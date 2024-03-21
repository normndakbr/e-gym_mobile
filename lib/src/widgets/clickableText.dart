import 'package:e_gym_mobile/src/pages/login.dart';
import 'package:e_gym_mobile/src/pages/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:e_gym_mobile/constants.dart';

class ClickableText extends StatelessWidget {
  final String textSpan1;
  final String textSpan2;
  final String type;

  ClickableText(this.textSpan1, this.textSpan2, this.type);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: textSpan1,
            style: const TextStyle(color: AppConstants.secondaryColor),
          ),
          TextSpan(
            text: textSpan2,
            style: const TextStyle(
              color: AppConstants.secondaryColor,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                if (type == "login") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                } else if (type == "register") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                }
              },
          ),
        ],
      ),
    );
  }
}
