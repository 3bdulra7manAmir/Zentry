import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_sizes.dart';

class CustomHomeAppBar extends ConsumerWidget implements PreferredSizeWidget
{
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return AppBar(
      backgroundColor: Theme.of(context).cardColor,
      leading: GestureDetector(
        onTap: () {},
        child: Image.asset("assets/icons/Home/Robot_Boy_SUIIZ.png"),
      ),
      actions:
      [
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/icons/Home/Search_With_Bg.png"),
        ),
        AppSizes.size8.horizontalSpace,
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/icons/Home/Messages_With_Bg.png"),
        ),
        AppSizes.size8.horizontalSpace,
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/icons/Home/Messages_With_Bg.png"),
        ),
        AppSizes.size8.horizontalSpace,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
