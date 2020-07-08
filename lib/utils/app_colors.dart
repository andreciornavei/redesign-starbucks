import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor black = AppColors.factoryColor(0xFF000000);
  static MaterialColor white = AppColors.factoryColor(0xffffffff);
  static MaterialColor gray = AppColors.factoryColor(0xffA9A9A9);
  static MaterialColor darkGray = AppColors.factoryColor(0xff78797B);
  static MaterialColor green = AppColors.factoryColor(0xff7EC518);
  static MaterialColor starbucksGreen = AppColors.factoryColor(0xFF006241);
  static MaterialColor houseGreen = AppColors.factoryColor(0xFF1e3932);
  static MaterialColor warmNeutral = AppColors.factoryColor(0xfff2f0eb);
  static MaterialColor lightGreen = AppColors.factoryColor(0xffd4e9e2);
  static MaterialColor factoryColor(int color) {
    return MaterialColor(color, <int, Color>{
      50: Color(color),
      100: Color(color),
      200: Color(color),
      300: Color(color),
      400: Color(color),
      500: Color(color),
      600: Color(color),
      700: Color(color),
      800: Color(color),
      900: Color(color),
    });
  }
}
