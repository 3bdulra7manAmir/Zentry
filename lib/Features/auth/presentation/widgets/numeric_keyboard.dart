import 'package:flutter/material.dart';
import 'package:test_app/Core/constants/app_padding.dart';
import 'package:test_app/config/themes/app_colors.dart';
import 'package:test_app/core/constants/app_borders.dart';
import 'package:test_app/core/constants/app_styles.dart';

class NumericKeyboard extends StatelessWidget
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
  Widget build(BuildContext context)
  {
    return GridView.builder(
      padding: AppPadding.kFormPadding,
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
        List<String> keys = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "*", "0", "⌫"];
        return InkWell(
          //onTap: () => onKeyTap(keys[index]),
          child: Container(
            decoration: BoxDecoration(color: AppColors.kNumericButtonBG, borderRadius: AppBorders.buttonBorder10,),
            alignment: Alignment.center,
            child: Text(keys[index], style: AppStyles.textStyle18(textColor: AppColors.kQuaternaryText)),
          ),
        );
      },
    );
  }
}