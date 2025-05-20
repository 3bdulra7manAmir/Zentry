import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../comment_card.dart';
import '../comments_reactions.dart';
import 'post_bio.dart';
import 'post_header.dart';

class PostsCard extends StatelessWidget
{
  const PostsCard({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppPadding.kAppFormPadding,
      width: 360.w,
      //height: 518.h,
      child: Column(
        children:
        [
          const PostHeader(),
          AppSizes.size14.verticalSpace,
          const PostBio(),
          AppSizes.size12.verticalSpace,
          Image.asset(AppAssets.iconsPNG.carMercPNG, fit: BoxFit.cover, width: 360.w,),
          AppSizes.size8.verticalSpace,
          const PostReactions(),
          AppSizes.size14.verticalSpace,
          CommentCard(padding: AppPadding.kZeroPadding,),
        ],
      ),
    );
  }
}

// class CommentsBottomSheetWidget extends StatelessWidget {
//   const CommentsBottomSheetWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         AppSizes.size11.verticalSpace,
//         Padding(
//           padding: EdgeInsetsDirectional.only(start: 13.w),
//           child: Image.asset("assets/icons/Inside_Post/Left_Black_Arrow.png"),
//         ),
//         AppSizes.size25.verticalSpace,
//         Container(
//           width: double.infinity,
//           height: 283.h,
//           margin: AppPadding.kApp10Padding,
//           decoration: BoxDecoration(
//             borderRadius: AppBorders.buttonBorder7,
//             image: const DecorationImage(
//               image: AssetImage("assets/icons/Inside_Post/Merc_Jeep.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         AppSizes.size30.verticalSpace,
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 38.w),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Image.asset("assets/icons/Inside_Post/Hart.png"),
//               const Spacer(),
//               Container(
//                 width: 215.w,
//                 height: 40.h,
//                 decoration: BoxDecoration(
//                   color: AppColors.color.kFormButtonsFill,
//                   borderRadius: AppBorders.buttonBorder10,
//                   border: Border.all(
//                     color: AppColors.color.kFormButtonsBorders,
//                     width: AppBorderWidths.width2,
//                   ),
//                 ),
//                 child: CustomTextFormField(
//                   fieldKeyboardType: TextInputType.text,
//                   fieldText: "Comment here !",
//                   fieldPrefixIcon: Image.asset("assets/icons/Inside_Post/User_Avatar.png"),
//                 ),
//               ),
//               const Spacer(),
//               Image.asset("assets/icons/Inside_Post/Save.png"),
//             ],
//           ),
//         ),
//         AppSizes.size18.verticalSpace,
//       ],
//     );
//   }
// }
