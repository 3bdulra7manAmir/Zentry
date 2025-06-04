import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../config/themes/color_system/app_colors.dart';
import '../constants/app_borders.dart';

class ShimmerContainer extends StatelessWidget
{
  final Color? baseColor;
  final Color? highlightColor;
  final double width;
  final double height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final Color? borderRadiusColor;
  final BorderRadius? borderRadius;

  const ShimmerContainer({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius, this.baseColor, 
    this.highlightColor, this.borderRadiusColor, 
    this.margin, this.padding, this.alignment,
  });

  @override
  Widget build(BuildContext context)
  {
    return Shimmer.fromColors(
      baseColor: baseColor ?? AppColors.color.kGrey001,
      highlightColor: highlightColor ?? AppColors.color.kGrey001,
      child: Container(
        height: height, width: width,
        margin: margin, padding: padding,
        alignment: alignment,
        decoration: BoxDecoration(
          color: borderRadiusColor ?? AppColors.color.kWhite001, 
          borderRadius: borderRadius ?? AppBordersRadiuses.circular.smallButton,
        ),
      ),
    );
  }
}
