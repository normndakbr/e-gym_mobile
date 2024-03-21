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
