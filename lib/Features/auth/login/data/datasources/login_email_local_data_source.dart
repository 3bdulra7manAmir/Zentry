import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/login_email_entity.dart';

abstract class LoginEmailLocalDataSource
{
  Future<List<LoginEmailEntity>> getLoingInfo();
}

class LoginEmailLocalDataSourceImpl implements LoginEmailLocalDataSource
{
  @override
  Future<List<LoginEmailEntity>> getLoingInfo() async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/login_email.json');  // Load JSON file
      final Map<String, dynamic> jsonData = json.decode(jsonString);            // Decode JSON string
      final List<dynamic> notificationsJson = jsonData['usersInfo'] ?? []; // Parse notifications array
      return notificationsJson.map((notification) => LoginEmailEntity.fromJson(notification)).toList();  // Map JSON data to NotificationEntity objects
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }
}
