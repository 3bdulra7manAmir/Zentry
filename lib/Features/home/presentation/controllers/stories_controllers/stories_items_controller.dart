import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/entity/story_entity.dart';
import 'story_usecase_controller.dart';

part 'stories_items_controller.g.dart';

@riverpod
Future<List<StoryEntity>> storiesItems(Ref ref) async
{
  final usecase = ref.watch(storyUsecaseProvider);
  final result = await usecase.call();
  return result.fold(
    (failure) => throw failure,
    (stories) => stories,
  );
}