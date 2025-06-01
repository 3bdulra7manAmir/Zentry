import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../data/data_sources/posts_local_data_source.dart';

final postsLocalDataSourceProvider = Provider<PostsLocalDataSource>((ref) {
  return PostsLocalDataSourceImpl();
});
