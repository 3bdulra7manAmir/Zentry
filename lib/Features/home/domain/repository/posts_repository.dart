import '../entity/post_entity.dart';

abstract class PostsRepository
{
  Future<List<PostEntity>> getPosts();
}
