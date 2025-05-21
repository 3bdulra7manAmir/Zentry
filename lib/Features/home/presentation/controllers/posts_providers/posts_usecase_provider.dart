import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/usecases/posts_usecase.dart';
import 'posts_repository_provider.dart';

final postsUsecaseProvider = Provider<PostsUsecase>((ref) {
  final repository = ref.watch(postsRepositoryProvider);
  return PostsUsecase(repository);
});
