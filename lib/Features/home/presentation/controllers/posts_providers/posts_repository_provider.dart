import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repository/posts_repository_impl.dart';
import '../../../domain/repository/posts_repository.dart';

part 'posts_repository_provider.g.dart';

@riverpod
PostsRepository postsRepository(PostsRepositoryRef ref) {
  return PostsRepositoryImpl();
}
