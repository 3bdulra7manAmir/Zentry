import 'package:flutter/material.dart';
import 'story_create.dart';
import 'story_list.dart';


class StroyList extends StatelessWidget
{
  const StroyList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children:
        [
          StoryCreate(),
          StroyListBuilder(),
        ],
      ),
    );
  }
}


