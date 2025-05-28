import 'package:flutter/material.dart';
import '../../../../../core/constants/app_borders.dart';

void showCompleteProfileBottomSheet(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).cardColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppBordersRadiuses.topOnly12),
    builder: (BuildContext context)
    {
      return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
          [
            
          ],
        ),
      );
    },
  );
}