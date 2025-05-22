import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/data_sources/story_local_data_source.dart';

part 'story_local_datasource_provider.g.dart';

@riverpod
StoryLocalDataSource storyLocalDataSource(StoryLocalDataSourceRef ref) {
  return StoryLocalDataSourceImpl();
}
