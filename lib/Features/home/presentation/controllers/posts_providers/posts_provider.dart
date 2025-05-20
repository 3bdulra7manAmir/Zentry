import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/features/home/domain/entity/post_entity.dart';
import 'package:test_app/features/home/presentation/controllers/posts_providers/posts_usecase_provider.dart';

final postsProvider = FutureProvider<List<PostEntity>>((ref) async {
  final usecase = ref.watch(postsUsecaseProvider);
  return await usecase();
});
