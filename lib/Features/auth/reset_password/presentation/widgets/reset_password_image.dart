import 'package:flutter/material.dart';
import '../../../../../core/constants/app_images.dart';

class ResetPasswordImage extends StatelessWidget
{
  const ResetPasswordImage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(AppAssets.iconsPNG.resetPasswordLock, alignment: Alignment.center,);
  }
}