import 'package:test_app/features/home/domain/entity/post_entity.dart';

abstract class PostsRepository {
  Future<List<PostEntity>> getPosts();
}
