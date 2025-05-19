import 'package:flutter/material.dart';

abstract class AppFontWeights
{
  AppFontWeights._();

  ///FontWeight.w200
  static FontWeight get extraLightWeight => FontWeight.w200;

  ///FontWeight.w300
  static FontWeight get lightWeight => FontWeight.w300;

  ///FontWeight.w400
  static FontWeight get regularWeight => FontWeight.w400;

  ///FontWeight.w500
  static FontWeight get mediumWeight => FontWeight.w500;

  ///FontWeight.w600
  static FontWeight get semiBoldWeight => FontWeight.w600;

  ///FontWeight.w700
  static FontWeight get boldWeight => FontWeight.w700;

  ///FontWeight.w800
  static FontWeight get extraBoldWeight => FontWeight.w800;

  ///FontWeight.w900
  static FontWeight get blackWeight => FontWeight.w900;
}
