import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/usecases/story_usecase.dart';
import 'story_repository_controller.dart';

part 'story_usecase_controller.g.dart';

@riverpod
StoryUsecase storyUsecase(Ref ref)
{
  final repository = ref.watch(storyRepositoryProvider);
  return StoryUsecase(repository);
}
