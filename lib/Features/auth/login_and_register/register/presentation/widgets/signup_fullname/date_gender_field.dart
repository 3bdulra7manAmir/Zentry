import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import 'date_time_gender/datatime_field.dart';
import 'date_time_gender/datetime_picker.dart';
import 'date_time_gender/gender_field.dart';
import 'date_time_gender/gender_picker.dart';

class SignUpDateGenderField extends StatelessWidget
{
  const SignUpDateGenderField({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Expanded(
          child: GestureDetector(
            onTap: () => showDateTimeBottomSheet(context),
            child: const DataTimePicker()
          ),
        ),
        AppSizes.size12.horizontalSpace,
        Expanded(
          child: GestureDetector(
            onTap: () => showGenderPickerBottomSheet(context),
            child: const GenderPicker()
          ),
        ),
      ],
    );
  }
}