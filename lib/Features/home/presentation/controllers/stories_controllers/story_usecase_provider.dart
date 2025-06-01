import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/usecases/story_usecase.dart';
import 'story_repository_provider.dart';

part 'story_usecase_provider.g.dart';

@riverpod
StoryUsecase storyUsecase(StoryUsecaseRef ref)
{
  final repository = ref.watch(storyRepositoryProvider);
  return StoryUsecase(repository);
}
