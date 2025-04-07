import 'package:flutter/material.dart';
import 'color_manager_base.dart';

class DarkColorScheme extends ColorManagerBase
{
  @override
  Color get kWhite => const Color(0xffFFFFFF);

  @override //REVERSED
  Color get kPrimaryText => const Color(0xffFFFFFF);

  @override
  Color get kTransparent => Colors.transparent;

  @override
  Color get kPrimaryBlue => const Color(0xff003082);

  @override
  Color get kVerificationUnderLine => const Color(0xff233973);

  @override
  Color get kForgetPassword => const Color(0xff3E6FCF);

  @override
  Color get kForgetPasswordUnderLine  => const Color(0xff1B1B1B);

  @override
  Color get kSemiWhite1 => const Color(0xffF4F4F4);

  @override //REVERSED
  Color get kTextFormFieldBorder => const Color(0xff434343);

  @override //REVERSED
  Color get kTextFormFieldFill => const Color(0xff434343);

  @override
  Color get kSocailButtonBorder => const Color(0xffE5E5E5);

  @override //REVERSED
  Color get kAppBarBG => const Color(0xff1B1B1B);

  @override //REVERSED
  Color get kNumericButtonBG => const Color(0xff1B1B1B);

  @override //REVERSED
  Color get kQuinaryText => const Color(0xffE5E5E5);

  @override
  Color get kSecondary => const Color(0xff9E9E9E);

  @override
  Color get kRemember => const Color(0xffB4B4B4);

  @override //REVERSED
  Color get kTertiaryText => const Color(0xffD7D7D7);

  @override //REVERSED
  Color get korLoginWithColor => const Color(0xffFFFFFF);

  @override //REVERSED
  Color get kQuaternaryText => const Color(0xffD7D7D7);

  @override //REVERSED
  Color get kSenaryText => const Color(0xffD7D7D7);

  @override
  Color get kAuthTab => const Color(0xffFF7D00);

  @override
  Color get kTextFormFieldFillDark => const Color(0xff272626);

  @override
  Color get kDarkScaffoldBGColor => const Color(0xff1B1B1B);


}
