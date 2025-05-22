import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../domain/entity/post_entity.dart';
import '../comment_card.dart';
import '../comments_reactions.dart';
import 'post_bio.dart';
import 'post_header.dart';

class PostsCard extends StatelessWidget {
  final PostEntity post;

  const PostsCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppMargins.horizontal16,
      width: 360.w,
      child: Column(
        children: [
          PostHeader(
            userImage: post.userImage,
            username: post.username,
            time: post.time,
          ),
          AppSizes.size14.verticalSpace,
          PostBio(
            carModel: post.carModel,
            carPrice: post.carPrice,
            carInfo: post.carInfo,
          ),
          AppSizes.size12.verticalSpace,
          Image.asset(
            post.postCarImage,
            fit: BoxFit.cover,
            width: 360.w,
          ),
          AppSizes.size8.verticalSpace,
          PostReactions(
            likesCount: post.likesCount,
            commentsCount: post.commentsCount,
            sharesCount: post.sharesCount,
          ),
          AppSizes.size14.verticalSpace,
          CommentCard(padding: AppPadding.zero),
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
//           margin: AppMargins.horizontal10,
//           decoration: BoxDecoration(
//             borderRadius: AppBordersRadiuses.circular7,
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
//                   color: AppColors.color.kGrey002,
//                   borderRadius: AppBordersRadiuses.circular10,
//                   border: Border.all(
//                     color: AppColors.color.kGrey001,
//                     width: AppBorderWidths.medium,
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
