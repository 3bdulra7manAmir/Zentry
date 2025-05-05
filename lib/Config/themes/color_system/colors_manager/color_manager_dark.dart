import 'package:flutter/material.dart';
import 'color_manager_base.dart';

class DarkColorScheme extends ColorManagerBase {
  @override
  Color get kSecondaryWhite => const Color(0xffFFFFFF);

  @override //REVERSED
  Color get kPrimaryGreyText => const Color(0xffFFFFFF);

  @override //SAME
  Color get kTransparent => Colors.transparent;

  @override
  Color get kPrimaryBlue => const Color(0xff003082);

  @override
  Color get kVerificationUnderLine => const Color(0xff233973);

  @override
  Color get kQuinarySemiBlueText => const Color(0xff3E6FCF);
  
  @override
  Color get kProductItemBackground => const Color(0xff87D1E5);

  @override
  Color get kForgetPasswordUnderLine => const Color(0xff1B1B1B);

  @override
  Color get kSemiGreyText => const Color(0xffB6B6B6);
  @override
  Color get kSemiGrey => const Color(0xffF3F3F3);

  @override
  Color get kTertiaryWhiteText => const Color(0xffF4F4F4);

  @override //REVERSED
  Color get kFormButtonsBorders => const Color(0xff434343);

  @override //REVERSED
  Color get kFormButtonsFill => const Color(0xff434343);

  @override
  Color get kSocialBorder => const Color(0xffE5E5E5);

  @override //REVERSED
  Color get kAppBarBG => const Color(0xff1B1B1B);

  @override //REVERSED
  Color get kNumericButtonBG => const Color(0xff1B1B1B);

  @override //REVERSED
  Color get kNonarySemiGreyText => const Color(0xffE5E5E5);
  @override //REVERSED
  Color get kSemiGreyAgain => const Color(0xff9A9A9A);

  @override
  Color get kSecondarySemiGreyText => const Color(0xff9E9E9E);

  @override
  Color get kTertiarySemiGrey => const Color(0xffB4B4B4);

  @override //REVERSED
  Color get kQuaternarySemiBlackText => const Color(0xffD7D7D7);

  @override //REVERSED
  Color get kSenaryTotalBlackText => const Color(0xffFFFFFF);

  @override //REVERSED
  Color get kSeptenarySemiGreyText => const Color(0xffD7D7D7);

  @override //REVERSED
  Color get kOctonarySemiBlackText => const Color(0xffD7D7D7);

  @override
  Color get kTabBar => const Color(0xffFF7D00);
  @override
  Color get kDatePicker => const Color(0xffEE7D19);
  @override
  Color get kRobotBoyRadiusColor => const Color(0xffF08A31);

  @override
  Color get kFormButtonsBordersFillDark => const Color(0xff272626);

  @override
  Color get kPrimaryDark => const Color(0xff1B1B1B);

  @override
  Color get kSocialBorderDark => const Color(0xff313131);

  @override
  Color get kSecondarySemiGreyTextDark => const Color(0xff676767);

  @override
  Color get kQuaternarySemiBlackTextDark => const Color(0xffD7D7D7);

  @override //REVERSED
  Color get kAgainTextDark => const Color(0xffD7D7D7);
}
