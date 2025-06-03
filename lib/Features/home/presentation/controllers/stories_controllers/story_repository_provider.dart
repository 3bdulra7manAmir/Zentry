import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repository/story_repository_impl.dart';
import '../../../domain/repository/story_repository.dart';
import 'story_local_datasource_provider.dart';

part 'story_repository_provider.g.dart';

@riverpod
StoryRepo storyRepository(Ref ref)
{
  final localDataSource = ref.watch(storyLocalDataSourceProvider);
  return StoryRepositoryImpl(localDataSource: localDataSource);
}
