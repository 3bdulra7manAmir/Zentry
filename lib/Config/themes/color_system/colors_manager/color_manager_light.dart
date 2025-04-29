import 'package:flutter/material.dart';
import 'color_manager_base.dart';

class LightColorScheme extends ColorManagerBase {
  @override
  Color get kPrimaryGreyText => const Color(0xff5D5D5D);

  @override
  Color get kTransparent => Colors.transparent;

  @override
  Color get kPrimaryBlue => const Color(0xff003082);

  @override
  Color get kVerificationUnderLine => const Color(0xff233973);

  @override
  Color get kQuinarySemiBlueText => const Color(0xff3E6FCF);

  @override
  Color get kForgetPasswordUnderLine => const Color(0xff3E6FCF);

  @override
  Color get kSecondaryWhite => const Color(0xffFFFFFF);

  @override
  Color get kTertiaryWhiteText => const Color(0xffF4F4F4);

  @override
  Color get kFormButtonsBorders => const Color(0xffEEEEEE);

  @override
  Color get kFormButtonsFill => const Color(0xffF8F8F8);

  @override
  Color get kSocialBorder => const Color(0xffE5E5E5);

  @override
  Color get kAppBarBG => const Color(0xffFBFBFB);

  @override
  Color get kNumericButtonBG => const Color(0xffFAFAFA);

  @override
  Color get kNonarySemiGreyText => const Color(0xff717171);

  @override
  Color get kSecondarySemiGreyText => const Color(0xff9E9E9E);

  @override
  Color get kTertiarySemiGrey => const Color(0xffB4B4B4);

  @override
  Color get kQuaternarySemiBlackText => const Color(0xff232633);

  @override
  Color get kSenaryTotalBlackText => const Color(0xff000000);

  @override
  Color get kSeptenarySemiGreyText => const Color(0xff2E2E2E);

  @override
  Color get kOctonarySemiBlackText => const Color(0xff1F1F1F);

  @override
  Color get kTabBar => const Color(0xffFF7D00);
  @override
  Color get kDatePicker => const Color(0xffEE7D19);

  @override
  Color get kFormButtonsBordersFillDark => const Color(0xff272626);

  @override // REVERSED
  Color get kPrimaryDark => const Color(0xffFFFFFF);

  @override //REVERSED
  Color get kSocialBorderDark => const Color(0xffE5E5E5);

  @override
  Color get kSecondarySemiGreyTextDark => const Color(0xff676767);

  @override
  Color get kQuaternarySemiBlackTextDark => const Color(0xffD7D7D7);
}
