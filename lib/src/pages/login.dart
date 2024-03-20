import 'package:flutter/material.dart';
import '../widgets/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextFormField(
              labelText: 'Email',
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              labelText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform login functionality here
                print('Login button pressed');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
