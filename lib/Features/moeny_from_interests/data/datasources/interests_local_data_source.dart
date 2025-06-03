import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/interest_category.dart';

class InterestsLocalDataSource
{
  Future<List<InterestCategory>> getInterestCategories() async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/money_from_interests_40326.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      final List<dynamic> categoryList = jsonData['categories'] as List<dynamic>;
      return categoryList.map((json) => InterestCategory.fromJson(json)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load interest categories: $e');
    }
  }
}
