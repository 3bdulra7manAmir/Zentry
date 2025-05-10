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
      // Load JSON file
      final String jsonString = await rootBundle.loadString('assets/json/home_screen.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      // Parse stories array
      final List<dynamic> storiesJson = jsonData['stories'] ?? [];
      
      // Map JSON data to StoryEntity objects
      return storiesJson.map((story) => StoryEntity.fromJson(story)).toList();
    }
    
    catch (e)
    {
      throw Exception('Failed to load stories: $e');
    }
  }
}
