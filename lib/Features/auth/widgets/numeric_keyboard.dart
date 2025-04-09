import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../config/themes/color_system/colors_manager/app_colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_padding.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/data/app_keyboard_numbers.dart';


class NumericKeyboard extends ConsumerWidget
{
  const NumericKeyboard({super.key});

  // String input = "";

  // void onKeyTap(String value) {
  //   setState(() {
  //     if (value == "⌫") {
  //       if (input.isNotEmpty) input = input.substring(0, input.length - 1);
  //     } else {
  //       input += value;
  //     }
  //   });
  // }
  

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final List<String> keys = getNumbersList(context);
    return GridView.builder(
      padding: AppPadding.kAppFormPadding,
      itemCount: 12,
      shrinkWrap: true,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2,
      ),
    
      itemBuilder: (context, index)
      {
        
        return InkWell(
          //onTap: () => onKeyTap(keys[index]),
          child: Container(
            decoration: BoxDecoration(color: AppColors.color.kNumericButtonBG, borderRadius: AppBorders.buttonBorder10,),
            alignment: Alignment.center,
            child: Text(keys[index], style: AppStyles.textStyle18(textColor: AppColors.color.kSeptenarySemiGreyText)),
          ),
        );
      },
    );
  }
}