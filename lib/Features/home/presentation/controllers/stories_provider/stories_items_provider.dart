import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/entity/story_entity.dart';
import 'story_usecase_provider.dart';

part 'stories_items_provider.g.dart';

@riverpod
Future<List<StoryEntity>> storiesItems(StoriesItemsRef ref) async {
  final usecase = ref.watch(storyUsecaseProvider);
  final result = await usecase.call();
  return result.fold(
    (failure) => throw failure,
    (stories) => stories,
  );
}