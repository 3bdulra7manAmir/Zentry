import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/l10n/generated/app_localizations.dart';
import '../../../config/themes/color_system/app_colors.dart';
import '../../constants/app_paddings.dart';
import 'app_button.dart';

class AppNextButton extends StatelessWidget
{
  const AppNextButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: double.infinity,
      height: 79.h,
      padding: AppPadding.nextButton,
      decoration: BoxDecoration(color: AppColors.color.kGrey002,),
      child: CustomButton(
        buttonOnPressed: onPressed,
        buttonText: AppLocalizations.of(context).next,
      ),
    );
  }
}