import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repository/posts_repository_impl.dart';
import '../../../../domain/repository/posts_repository.dart';
import 'posts_local_datasource_provider.dart';

part 'posts_repository_provider.g.dart';

@riverpod
PostsRepository postsRepository(Ref ref)
{
  final localDataSource = ref.watch(postsLocalDataSourceProvider);
  return PostsRepositoryImpl(localDataSource: localDataSource);
}
