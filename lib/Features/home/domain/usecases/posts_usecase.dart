import '../entity/post_entity.dart';
import '../repository/posts_repository.dart';

class PostsUsecase {
  final PostsRepository repository;

  PostsUsecase(this.repository);

  Future<List<PostEntity>> call() async {
    return await repository.getPosts();
  }
}
