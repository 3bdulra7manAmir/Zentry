import '../../domain/entity/post_entity.dart';
import '../../domain/repository/posts_repository.dart';
import '../data_sources/posts_local_data_source.dart';

class PostsRepositoryImpl implements PostsRepository
{
  final PostsLocalDataSource localDataSource;

  const PostsRepositoryImpl({required this.localDataSource});

  @override
  Future<List<PostEntity>> getPosts() async
  {
    try
    {
      return await localDataSource.getPosts();
    }
    catch (e)
    {
      throw Exception('Failed to get posts: $e');
    }
  }
}
