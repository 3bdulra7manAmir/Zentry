import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/data_sources/story_local_data_source.dart';

part 'story_local_datasource_controller.g.dart';

@riverpod
StoryLocalDataSource storyLocalDataSource(Ref ref) {
  return StoryLocalDataSourceImpl();
}
