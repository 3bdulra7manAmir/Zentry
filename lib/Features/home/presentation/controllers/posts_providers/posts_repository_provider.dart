import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/features/home/data/repository/posts_repository_impl.dart';
import 'package:test_app/features/home/domain/repository/posts_repository.dart';

final postsRepositoryProvider = Provider<PostsRepository>((ref) {
  return PostsRepositoryImpl();
});
