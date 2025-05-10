import '../entity/story_entity.dart';

abstract class StoryRepo
{
  Future<List<StoryEntity>> getStories();
}
