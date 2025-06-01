import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entity/post_entity.dart';
import 'posts_usecase_provider.dart';

part 'posts_provider.g.dart';

@riverpod
Future<List<PostEntity>> posts(PostsRef ref) async
{
  final usecase = ref.watch(postsUsecaseProvider);
  return await usecase();
}
