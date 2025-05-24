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

class PostsCard extends StatelessWidget
{
  final PostEntity post;

  const PostsCard({super.key, required this.post,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppMargins.horizontal16,
      width: 360.w,
      child: Column(
        children:
        [
          PostHeader(userImage: post.userImage, username: post.username, time: post.time,),
          AppSizes.size14.verticalSpace,
          PostBio(carModel: post.carModel, carPrice: post.carPrice, carInfo: post.carInfo,),
          AppSizes.size12.verticalSpace,
          Image.asset(post.postCarImage, fit: BoxFit.cover, width: 360.w,),
          AppSizes.size8.verticalSpace,
          PostReactions(likesCount: post.likesCount, commentsCount: post.commentsCount, sharesCount: post.sharesCount,),
          AppSizes.size14.verticalSpace,
          CommentCard(padding: AppPadding.zero),
        ],
      ),
    );
  }
}