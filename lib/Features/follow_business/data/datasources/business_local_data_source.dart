import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/business_entity.dart';

class BusinessLocalDataSource
{
  Future<List<BusinessEntity>> getBusinesses() async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/follow_business_page_40323.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      final List<dynamic> businessList = jsonData['businesses'] as List<dynamic>;
      return businessList.map((json) => BusinessEntity.fromJson(json)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load businesses: $e');
    }
  }
}
