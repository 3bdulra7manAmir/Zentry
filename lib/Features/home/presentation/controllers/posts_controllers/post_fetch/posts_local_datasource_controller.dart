import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/data_sources/posts_local_data_source.dart';

part 'posts_local_datasource_controller.g.dart';

@riverpod
PostsLocalDataSource postsLocalDataSource(Ref ref)
{
  return PostsLocalDataSourceImpl();
}
