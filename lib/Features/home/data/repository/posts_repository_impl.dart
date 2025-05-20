import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:test_app/features/home/domain/entity/post_entity.dart';
import 'package:test_app/features/home/domain/repository/posts_repository.dart';

class PostsRepositoryImpl implements PostsRepository {
  @override
  Future<List<PostEntity>> getPosts() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/home_screen_posts.json');
      final List<dynamic> jsonList = json.decode(jsonString) as List<dynamic>;
      return jsonList.map((json) => PostEntity.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load posts: $e');
    }
  }
}
