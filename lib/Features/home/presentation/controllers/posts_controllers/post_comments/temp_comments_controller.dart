import 'package:flutter_riverpod/flutter_riverpod.dart';

final tempCommentsProvider =
    StateNotifierProvider<TempCommentsController, List<String>>(
  (ref) => TempCommentsController(),
);

class TempCommentsController extends StateNotifier<List<String>>
{
  TempCommentsController() : super([]);

  void addComment(String comment)
  {
    if (comment.trim().isEmpty) return;
    state = [comment, ...state];
  }
}
