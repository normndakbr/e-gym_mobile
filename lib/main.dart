import 'package:e_gym_mobile/constants.dart';
import 'package:flutter/material.dart';
import 'src/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eGym Apps',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppConstants.secondaryColor,
            ),
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppConstants.secondaryColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
