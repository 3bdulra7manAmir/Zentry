import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repository/posts_repository_impl.dart';
import '../../../domain/repository/posts_repository.dart';

final postsRepositoryProvider = Provider<PostsRepository>((ref) {
  return PostsRepositoryImpl();
});
