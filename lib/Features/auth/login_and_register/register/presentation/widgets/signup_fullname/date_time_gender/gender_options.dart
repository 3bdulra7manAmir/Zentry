import 'package:flutter/material.dart';

import '../../../../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../../../../core/constants/app_borders.dart';
import '../../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../../core/constants/app_styles.dart';

class GenderOption extends StatelessWidget
{
  final String image;
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String> onChanged;

  const GenderOption({
    super.key, 
    required this.image,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: () => onChanged(value),
      borderRadius: AppBordersRadiuses.circular10,
      child: Container(
        padding: AppPadding.symmetric.largeHorizontal,
        decoration: BoxDecoration(borderRadius: AppBordersRadiuses.circular10,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Row(
              children:
              [
                Image.asset(image),
                Text(label, style: AppStyles.textStyle17(fontColor: AppColors.color.kBlack003),),
              ],
            ),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: (val) => onChanged(val!),
              activeColor: AppColors.color.kBlack003,
            ),
          ],
        ),
      ),
    );
  }
}