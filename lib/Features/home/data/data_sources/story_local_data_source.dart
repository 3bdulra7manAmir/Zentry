import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/story_entity.dart';

abstract class StoryLocalDataSource
{
  Future<List<StoryEntity>> getStories();
}

class StoryLocalDataSourceImpl implements StoryLocalDataSource
{
  @override
  Future<List<StoryEntity>> getStories() async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/home_screen.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> storiesJson = jsonData['stories'];
      return storiesJson.map((story) => StoryEntity.fromJson(story)).toList();
    }
    
    catch (e)
    {
      throw Exception('Failed to load stories: $e');
    }
  }
}
