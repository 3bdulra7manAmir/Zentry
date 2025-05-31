import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/constants/app_margins.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';


class PostCommentCard extends StatelessWidget
{
  const PostCommentCard({super.key, required this.commentText});

  final String commentText;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: AppMargins.horizontal16,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Text("User1:", style: AppStyles.textStyle12(),),
          AppSizes.size4.horizontalSpace,
          Flexible(child: Text(commentText, 
          style: AppStyles.textStyle12(), 
          overflow: TextOverflow.ellipsis, 
          textAlign: TextAlign.start,
          maxLines: 2,)
          ),
        ],
      ),
    );
  }
}