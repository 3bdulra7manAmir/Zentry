import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app_images.dart';

class UnkownCard extends StatelessWidget
{
  const UnkownCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: 210.h,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.iconsPNG.unkownPNG), fit: BoxFit.cover,),),
          child: Image.asset(AppAssets.iconsPNG.exitPNG, alignment: Alignment.topLeft,),
        ),
      ),
    );
  }
}