import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextFormField(
                labelText: 'Email / Member ID',
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                labelText: 'Password',
                obscureText: true,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Login button pressed');
                    },
                    child: Text('Login'),
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
