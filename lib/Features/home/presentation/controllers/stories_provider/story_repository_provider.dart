import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repository/story_repository_impl.dart';
import '../../../domain/repository/story_repository.dart';
import 'story_local_datasource_provider.dart';

final storyRepositoryProvider = Provider<StoryRepo>((ref) {
  final localDataSource = ref.watch(storyLocalDataSourceProvider);
  return StoryRepositoryImpl(localDataSource: localDataSource);
});
