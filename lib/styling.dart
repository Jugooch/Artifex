import 'package:flutter/material.dart';

class AppStyles {
  static const TextStyle header1 = TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle paragraph = TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);
  static const TextStyle input = TextStyle(color: AppColors.background, fontSize: 16, fontWeight: FontWeight.normal);
  static const TextStyle textBtn = TextStyle(color: AppColors.primary, fontSize: 16, fontWeight: FontWeight.bold);
}

class AppColors {
  static const Color primary = Color(0xffA80000);
  static const Color background = Color(0xff383838);
  static const Color inactiveIcon = Color(0xffBFBFBF);
  static const Color activeIcon = Color(0xff808080);
}
