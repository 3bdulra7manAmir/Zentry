import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../controllers/likes_count_controller.dart';

class PostReactions extends ConsumerWidget 
{
  final int likesCount;
  final String commentsCount;
  final String sharesCount;
  
  const PostReactions({
    super.key,
    required this.likesCount,
    required this.commentsCount,
    required this.sharesCount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final (likes, isLiked) = ref.watch(likesCountControllerProvider(initialLikes: likesCount),);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Row(
          children:
          [
            SizedBox(
              width: 20.w,
              height: 15.h,
              child: Stack(
                clipBehavior: Clip.none,
                children:
                [
                  Positioned(
                    left: 0,
                    child: Image.asset(AppAssets.iconsPNG.reactionHeart,),
                  ),
                  Positioned(
                    left: 6.w,
                    child: Image.asset(AppAssets.iconsPNG.reactionSmile,),
                  ),
                  Positioned(
                    left: 11.w,
                    child: Image.asset(AppAssets.iconsPNG.reactionCry,),
                  ),
                ],
              ),
            ),
            AppSizes.size7.horizontalSpace,
            Text(likes.toString(), style: AppStyles.textStyle10(),),
            AppSizes.size4.horizontalSpace,
            Text(AppLocalizations.of(context).likes, style: AppStyles.textStyle10(),),
            const Spacer(),
            AppSizes.size15.horizontalSpace,
            Text(commentsCount, style: AppStyles.textStyle10(),),
            AppSizes.size4.horizontalSpace,
            Text(AppLocalizations.of(context).comments, style: AppStyles.textStyle10(),),
            AppSizes.size15.horizontalSpace,
            Text(sharesCount, style: AppStyles.textStyle10(),),
            AppSizes.size4.horizontalSpace,
            Text(AppLocalizations.of(context).shares, style: AppStyles.textStyle10(),),
          ],
        )
      ],
    );
  }
}