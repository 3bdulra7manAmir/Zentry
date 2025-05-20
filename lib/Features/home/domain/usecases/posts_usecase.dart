import 'package:test_app/features/home/domain/entity/post_entity.dart';
import 'package:test_app/features/home/domain/repository/posts_repository.dart';

class PostsUsecase {
  final PostsRepository repository;

  PostsUsecase(this.repository);

  Future<List<PostEntity>> call() async {
    return await repository.getPosts();
  }
}
