import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/widgets/app_listview_builder.dart';
import 'products_item.dart';

class ProductsItemList extends StatelessWidget
{
  const ProductsItemList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AppListviewBuilder(
      padding: AppPadding.kHomeListViewPadding,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const ProductsItem(),
      separatorBuilder: (context, index) => AppSizes.size16.horizontalSpace,
      itemCount: 7,
    );
  }
}