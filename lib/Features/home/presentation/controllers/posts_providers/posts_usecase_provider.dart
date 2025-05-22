import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/usecases/posts_usecase.dart';
import 'posts_repository_provider.dart';

part 'posts_usecase_provider.g.dart';

@riverpod
PostsUsecase postsUsecase(PostsUsecaseRef ref) {
  final repository = ref.watch(postsRepositoryProvider);
  return PostsUsecase(repository);
}
