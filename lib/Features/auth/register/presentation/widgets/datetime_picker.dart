import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/app_button.dart';
import '../controllers/date_provider.dart';

void showDateTimeBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(borderRadius: AppBorders.buttonBorder10),
    builder: (BuildContext context)
    {
      return Consumer( //HERE
        builder: (context, ref, _)
        {
          final currentDate = ref.watch(selectedDateProvider);
          int selectedYear = currentDate.year;
          int selectedMonth = currentDate.month;
          int selectedDay = currentDate.day;
          List<int> years = List.generate(100, (index) => DateTime.now().year - index);
          List<int> months = List.generate(12, (index) => index + 1);
          List<int> getDaysInMonth(int year, int month)
          {
            final lastDay = DateTime(year, month + 1, 0).day;
            return List.generate(lastDay, (index) => index + 1);
          }
          List<int> days = getDaysInMonth(selectedYear, selectedMonth);
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState)
            {
              return Padding(
                padding: AppPadding.kTabBarPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  [
                    Container(
                      width: 73.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: AppColors.color.kGreyText002,
                        borderRadius: AppBorders.dividerBorder,
                      ),
                    ),
                    AppSizes.size35.verticalSpace,
                    Text(AppLocalizations.of(context).selectBirthDate, style: AppStyles.textStyle12(fontColor: AppColors.color.kGreyText002,),),
                    AppSizes.size35.verticalSpace,
                    Row(
                      children:
                      [
                        Expanded(child: Center(child: Text(AppLocalizations.of(context).year, style: AppStyles.textStyle12()))),
                        Expanded(child: Center(child: Text(AppLocalizations.of(context).month, style: AppStyles.textStyle12()))),
                        Expanded(child: Center(child: Text(AppLocalizations.of(context).day, style: AppStyles.textStyle12()))),
                      ],
                    ),
                    AppSizes.size16.verticalSpace,
                    Row(
                      children:
                      [
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(initialItem: years.indexOf(selectedYear),),
                            itemExtent: 75.h,
                            onSelectedItemChanged: (index)
                            {
                              setState(()
                              {
                                selectedYear = years[index];
                                days = getDaysInMonth(selectedYear, selectedMonth);
                                if (selectedDay > days.length) {selectedDay = days.length;}
                              });
                            },
                            children: years.map((year) => Center(child: Text(year.toString()))).toList(),
                          ),
                        ),
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                              initialItem: selectedMonth - 1,
                            ),
                            itemExtent: 75.h,
                            onSelectedItemChanged: (index)
                            {
                              setState(()
                              {
                                selectedMonth = months[index];
                                days = getDaysInMonth(selectedYear, selectedMonth);
                                if (selectedDay > days.length) {selectedDay = days.length;}
                              });
                            },
                            children: months.map((month) => Center(child: Text(month.toString()))).toList(),
                          ),
                        ),
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                              initialItem: selectedDay - 1,
                            ),
                            itemExtent: 75.h,
                            onSelectedItemChanged: (index)
                            {
                              setState(()
                              {
                                selectedDay = days[index];
                              });
                            },
                            children: days.map((day) => Center(child: Text(day.toString()))).toList(),
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
                        final pickedDate = DateTime(selectedYear, selectedMonth, selectedDay);
                        ref.read(selectedDateProvider.notifier).updateDate(pickedDate);
                        AppRouter.router.pop();
                      },
                    ),
                    AppSizes.size16.verticalSpace,
                  ],
                ),
              );
            },
          );
        },
      );
    },
  );
}
