import 'package:flutter/material.dart';
import 'package:e_gym_mobile/constants.dart';
import 'package:e_gym_mobile/src/utils/utils.dart';
import '../widgets/customTextFormField.dart';
import '../widgets/clickableText.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppConstants.primaryColor,
        child: Padding(
          padding: AppUtils.responsiveHorizontalPadding(context, 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: AppUtils.responsiveHeight(context, 0.035),
                    fontWeight: FontWeight.w900,
                    color: AppConstants.secondaryColor,
                  ),
                ),
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.01)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please provide information for create an account',
                  style: TextStyle(
                    fontSize: AppUtils.responsiveHeight(context, 0.018),
                    color: AppConstants.secondaryColor,
                  ),
                ),
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.06)),
              CustomTextFormField(
                labelText: 'Email / Member ID',
                textValue: email,
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.03)),
              CustomTextFormField(
                labelText: 'Full Name',
                textValue: name,
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.03)),
              CustomTextFormField(
                labelText: 'Password',
                obscureText: true,
                textValue: password,
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.03)),
              CustomTextFormField(
                labelText: 'Confirm Passoword',
                obscureText: true,
                textValue: confirmPassword,
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.06)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (email.text.isEmpty ||
                          password.text.isEmpty ||
                          name.text.isEmpty ||
                          confirmPassword.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Warning'),
                              content: Text('Please fill in email/password.'),
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
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Success'),
                              content: Text(
                                  'New account request has been confirmed'),
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
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppConstants.secondaryColor,
                    ),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: AppUtils.responsiveWidth(context, 0.028),
                        fontWeight: FontWeight.w900,
                        color: AppConstants.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.1)),
              ClickableText('Already have an account? ', 'log in', "login"),
            ],
          ),
        ),
      ),
    );
  }
}
