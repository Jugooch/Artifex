import 'package:flutter/material.dart';

class AppStyles {
////////////////////
// Text Styles
////////////////////

  // Header 1 Style
  static const TextStyle header1 =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  // Paragraph Style
  static const TextStyle paragraph = TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);

  // Input Text Style
  static const TextStyle input = TextStyle(
      color: AppColors.background, fontSize: 16, fontWeight: FontWeight.normal);

  // Text Button Style
  static const TextStyle textBtn = TextStyle(
      color: AppColors.primary, fontSize: 16, fontWeight: FontWeight.bold);

  // Success Text Style
  static const TextStyle successTxt = TextStyle(
      color: AppColors.success, fontSize: 14, fontWeight: FontWeight.w300);

  // Error Text Style
  static const TextStyle errorTxt = TextStyle(
      color: AppColors.error, fontSize: 14, fontWeight: FontWeight.w300);

////////////////////
// Button Styles
////////////////////

  // Primary Button Style
  static const ButtonStyle primaryBtn = ButtonStyle(
      fixedSize: MaterialStatePropertyAll(Size.fromHeight(64)),
      backgroundColor: MaterialStatePropertyAll(AppColors.primary),
      iconColor: MaterialStatePropertyAll(Colors.white),
      iconSize: MaterialStatePropertyAll(24),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)))),
      padding: MaterialStatePropertyAll(EdgeInsets.all(16)));

  // Secondary Button Style
  static const ButtonStyle secondaryBtn = ButtonStyle(
      fixedSize: MaterialStatePropertyAll(Size.fromHeight(64)),
      backgroundColor: MaterialStatePropertyAll(AppColors.navBackground),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)))),
      padding: MaterialStatePropertyAll(EdgeInsets.all(16)));

  // Icon Button Style
  static const ButtonStyle iconBtn = ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(AppColors.primary),
      iconColor: MaterialStatePropertyAll(Colors.white),
      iconSize: MaterialStatePropertyAll(16),
      shape: MaterialStatePropertyAll(CircleBorder()));
}

class AppColors {
  static const Color primary = Color(0xffA80000);
  static const Color background = Color(0xff383838);
  static const Color navBackground = Color(0xff404040);
  static const Color inactiveIcon = Color(0xffBFBFBF);
  static const Color activeIcon = Color(0xff808080);
  static const Color success = Color(0xff1EE132);
  static const Color error = Color(0xffDD2222);
  static const Color warning = Color(0xffFFD600);
  static const Color successDisabled = Color(0xff8FF098);
  static const Color errorDisabled = Color(0xffEE9090);
  static const Color warningDisabled = Color(0xffFFEB80);
}
