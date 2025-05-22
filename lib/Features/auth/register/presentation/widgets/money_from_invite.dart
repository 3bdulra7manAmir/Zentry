import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../follow_business/presentation/screens/follow_business_page.dart';

void showMoenyFromInviteBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    //isScrollControlled: true,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.topOnly12),
    builder: (BuildContext context)
    {
      return Column(
        mainAxisSize: MainAxisSize.min, // Use minimum space needed
        children:
        [
          FollowBusinessCardHeader(headerText: AppLocalizations.of(context).moneyFromInvite,),
          AppSizes.size20.verticalSpace,
          const Expanded(
            child: SingleChildScrollView(
              child: MoenyFromInviteCard(),
            ),
          ),

          Container(
            width: double.infinity,
            height: 79.h,
            padding: AppPadding.nextButton,
            decoration: BoxDecoration(
              color: AppColors.color.kGrey002,
            ),
            child: CustomButton(buttonText: AppLocalizations.of(context).next,),
          ),
        ],
      );
    },
  );
}


class MoenyFromInviteCard extends StatelessWidget
{

  const MoenyFromInviteCard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisSize: MainAxisSize.min, // Use minimum space needed
      children:
      [
        Container(
          margin: AppMargins.horizontal16,
          width: 326.w,
          height: 187.h,
          decoration: BoxDecoration(
            image:  DecorationImage(
              image: AssetImage(AppAssets.iconsPNG.invitesVideoThumbnail),
              fit: BoxFit.cover,
            ),  
            borderRadius: AppBorders.circular10,
          ),
          child: Image.asset(AppAssets.iconsPNG.invitesPlayButton,),
        ),
        AppSizes.size24.verticalSpace,
        Padding(
          padding: AppPadding.horizontal18,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text(AppLocalizations.of(context).addInvitationCode, style: AppStyles.textStyle12(
                fontColor: AppColors.color.kBlack001,
                fontWeight: AppFontWeights.semiBoldWeight)
              ),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.text, fieldText: AppLocalizations.of(context).invitationCodeExample2,
                fieldsuffixIcon: Padding( //HERE //FIX //Temp
                  padding: AppPadding.endOnly15,
                  child: SizedBox(
                    width: 60,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(AppLocalizations.of(context).paste, style: AppStyles.textStyle12(),),
                    ),
                  ),
                ),
              ),
              AppSizes.size24.verticalSpace,
              Text(AppLocalizations.of(context).myCode, style: AppStyles.textStyle12(
                fontColor: AppColors.color.kBlack001,
                fontWeight: AppFontWeights.semiBoldWeight)
              ),
              AppSizes.size8.verticalSpace,
              CustomTextFormField(
                fieldKeyboardType: TextInputType.text, fieldText: AppLocalizations.of(context).myCodeExample,
                fieldsuffixIcon: Padding( //HERE //FIX //Temp
                  padding: AppPadding.endOnly15,
                  child: SizedBox(
                    width: 60.w,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(AppLocalizations.of(context).paste, style: AppStyles.textStyle12(),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        AppSizes.size43.verticalSpace,
      ],
    );
  }
}