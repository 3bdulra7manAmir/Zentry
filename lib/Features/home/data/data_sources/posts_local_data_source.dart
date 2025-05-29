import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/post_entity.dart';

abstract class PostsLocalDataSource
{
  Future<List<PostEntity>> getPosts();
}

class PostsLocalDataSourceImpl implements PostsLocalDataSource
{
  @override
  Future<List<PostEntity>> getPosts() async
  {
    try
    {
      await Future.delayed(const Duration(seconds: 4));
      final String jsonString = await rootBundle.loadString('assets/json/home_screen_posts.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      return jsonData.map((post) => PostEntity.fromJson(post)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load posts: $e');
    }
  }
}
