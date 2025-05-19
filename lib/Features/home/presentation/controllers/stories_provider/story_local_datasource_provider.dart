import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/data_sources/story_local_data_source.dart';

final storyLocalDataSourceProvider = Provider<StoryLocalDataSource>((ref) {
  return StoryLocalDataSourceImpl();
});
