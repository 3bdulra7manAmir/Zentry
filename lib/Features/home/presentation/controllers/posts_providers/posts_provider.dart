import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entity/post_entity.dart';
import 'posts_usecase_provider.dart';

final postsProvider = FutureProvider<List<PostEntity>>((ref) async {
  final usecase = ref.watch(postsUsecaseProvider);
  return await usecase();
});
