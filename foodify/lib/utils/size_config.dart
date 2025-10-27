import 'package:flutter/material.dart';

class SizeConfig {
  static late double blockHeight;
  static late double blockWidth;
  static late double screenHeight;
  static late double screenWidth;

  static late MediaQueryData _mediaQueryData;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
  }

  // Helper functions
  static double width(double percentage) => blockWidth * percentage;

  static double height(double percentage) => blockHeight * percentage;

  static double text(double size) => blockWidth * (size / 3.5);
}
