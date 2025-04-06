import 'package:flutter/material.dart';
import 'color_manager_base.dart';

class DarkColorScheme extends ColorManagerBase
{
  @override
  Color get primary => Colors.deepPurple;

  @override
  Color get background => Colors.black;

  @override
  Color get text => Colors.white;

  @override
  Color get button => Colors.deepPurpleAccent;
}
