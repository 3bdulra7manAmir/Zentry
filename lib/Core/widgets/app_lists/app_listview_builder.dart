import 'package:flutter/material.dart';

class AppListviewBuilder extends StatelessWidget
{
  final Widget Function(BuildContext, int) separatorBuilder;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final EdgeInsetsGeometry? padding;
  final bool? reverse;
  final ScrollPhysics? physics;
  final Axis? scrollDirection ;

  const AppListviewBuilder({super.key,
  required this.itemBuilder,
  required this.itemCount,
  this.padding,
  this.reverse,
  this.physics,
  this.scrollDirection,
  required this.separatorBuilder,
  });

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
      scrollDirection: scrollDirection ?? Axis.vertical,
      separatorBuilder: separatorBuilder,
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      padding: padding,
      reverse: reverse ?? false,
      shrinkWrap: true,
      physics: physics ?? const ScrollPhysics(),
    );
  }
}