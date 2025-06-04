import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/color_system/app_colors.dart';
import '../../../../../config/themes/font_system/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../domain/entity/products_items_entity.dart';

class ProductsItem extends StatelessWidget
{
  const ProductsItem({super.key, required this.product,});

  final ProductsItemsEntity product;

  @override
  Widget build(BuildContext context)
  {
    final Color backgroundColor = product.backgroundColor != null
    ? Color(int.parse(product.backgroundColor!.replaceAll('#', '0xff')))
    : AppColors.color.kCyan001;
    return Column(
      children:
      [
        Container(
          width: 55.w,
          height: 55.h,
          decoration: BoxDecoration(
            color: backgroundColor,
            image: product.image != null ? DecorationImage(image: AssetImage(product.image!)) : null,
            borderRadius: AppBordersRadiuses.circular.productItem,
          ),
        ),
        AppSizes.size8.verticalSpace,
        if (product.title != null)
          Text(product.title!, style: AppStyles.textStyle10(fontWeight: AppFontWeights.semiBoldWeight, fontColor: AppColors.color.kGreyText005,),),
      ],
    );
  }
}