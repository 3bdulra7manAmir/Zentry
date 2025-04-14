// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../features/auth/login_and_register/presentation/controllers/obsecure_text_provider.dart';
// import '../constants/app_images.dart';

// Widget gestureDetector(Ref ref, bool obscureText)
// {
//   return GestureDetector(
//     onTap: ()
//     {
//       ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;
//     },
//     child: Image.asset(obscureText ? AppAssets.iconsPNG.corssedEyePNG : AppAssets.iconsPNG.eyePNG,),
//   );
// }