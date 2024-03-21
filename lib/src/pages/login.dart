import 'package:e_gym_mobile/constants.dart';
import 'package:e_gym_mobile/src/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
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
                  'Welcome',
                  style: TextStyle(
                    fontSize: AppUtils.responsiveHeight(context, 0.05),
                    fontWeight: FontWeight.w900,
                    color: AppConstants.secondaryColor,
                  ),
                ),
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.01)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please login to continue',
                  style: TextStyle(
                    fontSize: AppUtils.responsiveHeight(context, 0.02),
                    color: AppConstants.secondaryColor,
                  ),
                ),
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.07)),
              const CustomTextFormField(
                labelText: 'Email / Member ID',
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.03)),
              const CustomTextFormField(
                labelText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: AppUtils.responsiveHeight(context, 0.06)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Login button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppConstants.secondaryColor,
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: AppUtils.responsiveWidth(context, 0.028),
                        fontWeight: FontWeight.w900,
                        color: AppConstants.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
