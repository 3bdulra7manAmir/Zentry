import 'package:flutter/material.dart';

class AppColors
{
  AppColors._();

  static LinearGradient appGradient = const LinearGradient(colors: [Color(0xff662D91), Color(0xff905EB6),],);
  static LinearGradient buttonGradient = const LinearGradient(colors: [Color(0xff01A99D), Color(0xff01CABC),],);
  static LinearGradient calenderGradient = const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xffFFDC95), Color(0xffFFB215),],);

  static LinearGradient cardGradient = LinearGradient(colors: [const Color(0xff502173).withValues(alpha: 0.52), const Color(0xff7234A0).withValues(alpha: 0.52)],);

  static Color scaffold = const Color(0xffF1F3FA);
  static Color white = const Color(0xffFFFFFF);
  static Color kTransparentColor =  Colors.transparent;

  static Color achievementCardColor1 = const Color.fromRGBO(255, 178, 21, 0.15);
  static Color achievementCardColor2 = const Color.fromRGBO(0, 169, 157, 0.12);
  static Color achievementCardColor3 = const Color.fromRGBO(102, 45, 145, 0.15);
}
