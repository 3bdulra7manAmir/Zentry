import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'temp_comments_controller.g.dart';

@riverpod
class TempComments extends _$TempComments
{
  @override
  List<String> build() => [];

  void addComment(String comment)
  {
    if (comment.trim().isEmpty) return;
    state = [comment, ...state];
  }
}
