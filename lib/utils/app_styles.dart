import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class Styles {
  static Color primaryColor = primary;
  static const Color TextColor = Color(0xff3b3b3b);
  static const Color bgColor = Color(0xffeeedf2);
  static const Color blueColor = Color(0xff526799);
  static const Color orangeColor = Color(0XFFF37867);
  static const Color spaceColor = Color(0XFFd2bdb6);
  static const TextStyle textStyle =
      TextStyle(fontSize: 16, color: TextColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = const TextStyle(
      fontSize: 26, color: TextColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = const TextStyle(
      fontSize: 21, color: TextColor, fontWeight: FontWeight.bold);
  // ignore: prefer_const_constructors
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
