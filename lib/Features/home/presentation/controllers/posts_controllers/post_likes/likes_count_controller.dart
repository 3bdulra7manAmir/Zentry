import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'likes_count_controller.g.dart';

@riverpod
class LikesCountController extends _$LikesCountController
{
  late int _initialLikes;

  @override
  (int likes, bool isLiked) build({
    required int initialLikes,
  }) {
    _initialLikes = initialLikes;
    return (_initialLikes, false);
  }

  void toggleLike()
  {
    try
    {
      final (likes, isLiked) = state;
      if (isLiked)
      {
        state = (likes - 1, false);
      }
      else
      {
        state = (likes + 1, true);
      }
    }
    catch (e)
    {
      //
    }
  }
}
