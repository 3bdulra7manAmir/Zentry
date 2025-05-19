import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entities/search_result.dart';

class SearchResultLocalDataSource {
  Future<List<SearchResult>> getSearchResults() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/search_result_screen.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      final List<dynamic> resultsList = jsonData['categories'] as List<dynamic>;
      return resultsList.map((json) => SearchResult.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load search results: $e');
    }
  }
}
