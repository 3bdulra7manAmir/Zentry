import 'package:flutter/material.dart';
import '../../../../core/constants/app_paddings.dart';

class GridViewBuilder extends StatelessWidget
{
  const GridViewBuilder({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.separatorBuilder,
    this.crossAxisCount,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
    this.childAspectRatio,
  });

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final int? crossAxisCount;
  final double? mainAxisSpacing;
  final double? crossAxisSpacing;
  final double? childAspectRatio;

  @override
  Widget build(BuildContext context)
  {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: AppPadding.topOnly20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount ?? 2,
        mainAxisSpacing: mainAxisSpacing ?? 12.0,
        crossAxisSpacing: crossAxisSpacing ?? 12.0,
        childAspectRatio: childAspectRatio ?? 1.4,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}