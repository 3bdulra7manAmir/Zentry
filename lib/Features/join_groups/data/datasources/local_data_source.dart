import 'dart:convert';
import 'package:flutter/services.dart';

import '../../domain/entities/join_groups_entity.dart';

class JoinGroupsLocalDataSource
{
  Future<List<JoinGroupsEntity>> getJoinGroupsRepo() async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/join_groups_40325.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> categoryList = jsonData['groups'] as List<dynamic>;
      return categoryList.map((json) => JoinGroupsEntity.fromJson(json)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load groups: $e');
    }
  }
}
