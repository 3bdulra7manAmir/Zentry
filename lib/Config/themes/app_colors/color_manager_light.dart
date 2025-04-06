import 'package:flutter/material.dart';
import 'color_manager_base.dart';

class LightColorScheme extends ColorManagerBase
{
  @override
  Color get primary => Colors.blue;

  @override
  Color get background => Colors.white;

  @override
  Color get text => Colors.black;

  @override
  Color get button => Colors.blueAccent;
}
