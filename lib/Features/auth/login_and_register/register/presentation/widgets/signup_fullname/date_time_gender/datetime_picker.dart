import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../../../config/router/app_router.dart';
import '../../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../../core/constants/app_borders.dart';
import '../../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../../core/helpers/app_providers.dart';
import '../../../../../../../../core/widgets/app_buttons/app_button.dart';
import '../../../controllers/fullname_controllers/datetime_picker_provider.dart';
import '../../../controllers/fullname_controllers/selected_date_provider.dart';

void showDateTimeBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    isScrollControlled: false,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.circular10,),
    builder: (_) => Consumer(
      builder: (context, ref, _)
      { //HERE //FIX //Temp
        final provider = AppProvidersProvider(ref, context);
        final state = ref.watch(datePickerStateProvider(provider.currentBirthDate));
        final notifier = ref.read(datePickerStateProvider(provider.currentBirthDate).notifier);
        final years = List.generate(100, (i) => DateTime.now().year - i);
        final months = List.generate(12, (i) => i + 1);
        final days = List.generate(DateTime(state.year, state.month + 1, 0).day,
        (i) => i + 1,
        );
        return Padding(
          padding: AppPadding.symmetric.mediumAllSymmetric,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:
            [
              Container(
                width: 73.w,
                height: 3.h,
                decoration: BoxDecoration(color: AppColors.color.kGreyText002, borderRadius: AppBordersRadiuses.circular4,),
              ),
              AppSizes.size35.verticalSpace,
              Text(AppLocalizations.of(context).selectBirthDate, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText002,),),
              AppSizes.size35.verticalSpace,
              Row(
                children:
                [
                  for (final label in
                  [
                    AppLocalizations.of(context).year,
                    AppLocalizations.of(context).month,
                    AppLocalizations.of(context).day
                  ])
                    Expanded(
                      child: Center(child: Text(label, style: AppStyles.textStyle12()),),
                    ),
                ],
              ),
              AppSizes.size16.verticalSpace,
              Row(
                children:
                [
                  Expanded(
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(initialItem: years.indexOf(state.year),),
                      itemExtent: 75.h,
                      onSelectedItemChanged: (index) => notifier.setYear(years[index]),
                      children: years.map((e) => Center(child: Text('$e'))).toList(),
                      
                    ),
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(initialItem: state.month - 1,),
                      itemExtent: 75.h,
                      onSelectedItemChanged: (index) => notifier.setMonth(months[index]),
                      children: months.map((e) => Center(child: Text('$e'))).toList(),
                    ),
                  ),
                  Expanded(
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(initialItem: state.day - 1,),
                      itemExtent: 75.h,
                      onSelectedItemChanged: (index) => notifier.setDay(days[index]),
                      children: days.map((e) => Center(child: Text('$e'))).toList(),
                    ),
                  ),
                ],
              ),
              AppSizes.size16.verticalSpace,
              CustomButton(
                buttonText: AppLocalizations.of(context).confirm,
                buttonHeight: 40.h,
                buttonWidth: 250.h,
                buttonOnPressed: ()
                {
                  final picked = DateTime(state.year, state.month, state.day);
                  ref.read(selectedDateProvider.notifier).updateDate(picked);
                  AppRouter.router.pop();
                },
              ),
              AppSizes.size16.verticalSpace,
            ],
          ),
        );
      },
    ),
  );
}
