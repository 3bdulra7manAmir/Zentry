import '../../domain/entity/story_entity.dart';
import '../data_sources/story_local_data_source.dart';
import '../../domain/repository/story_repository.dart';

class StoryRepositoryImpl implements StoryRepo
{
  final StoryLocalDataSource localDataSource;

  StoryRepositoryImpl({required this.localDataSource});

  @override
  Future<List<StoryEntity>> getStories() async
  {
    try
    {
      return await localDataSource.getStories();
    }
    catch (e)
    {
      throw Exception('Failed to get stories: $e');
    }
  }
}
