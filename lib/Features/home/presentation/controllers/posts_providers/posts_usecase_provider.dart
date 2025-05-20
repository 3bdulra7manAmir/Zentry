import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/features/home/domain/usecases/posts_usecase.dart';
import 'package:test_app/features/home/presentation/controllers/posts_providers/posts_repository_provider.dart';

final postsUsecaseProvider = Provider<PostsUsecase>((ref) {
  final repository = ref.watch(postsRepositoryProvider);
  return PostsUsecase(repository);
});
