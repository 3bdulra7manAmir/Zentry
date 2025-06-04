import 'package:flutter/material.dart';

import '../../../core/constants/app_paddings.dart';

class AppAuthContainer extends StatelessWidget
{
  const AppAuthContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.largeHorizontal,
      width: double.infinity,
      color: Theme.of(context).cardColor,
      child: child,
    );
  }
}