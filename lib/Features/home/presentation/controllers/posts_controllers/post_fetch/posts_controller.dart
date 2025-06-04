import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entity/post_entity.dart';
import 'posts_usecase_controller.dart';

part 'posts_controller.g.dart';

@riverpod
Future<List<PostEntity>> posts(Ref ref) async
{
  final usecase = ref.watch(postsUsecaseProvider);
  return await usecase();
}
