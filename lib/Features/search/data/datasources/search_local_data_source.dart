import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/models/search_category.dart';

class SearchLocalDataSource {
  Future<List<SearchCategory>> getSearchCategories() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/search_screen.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      final List<dynamic> categoryList = jsonData['categories'] as List<dynamic>;
      return categoryList.map((json) => SearchCategory.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load search categories: $e');
    }
  }

  Future<List<SearchCategory>> searchCategories(String query) async {
    try {
      final categories = await getSearchCategories();
      if (query.isEmpty) return categories;
      
      return categories.where((category) => 
        category.title.toLowerCase().contains(query.toLowerCase())
      ).toList();
    } catch (e) {
      throw Exception('Failed to search categories: $e');
    }
  }
}
