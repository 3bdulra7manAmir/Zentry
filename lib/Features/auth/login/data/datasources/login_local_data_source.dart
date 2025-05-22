import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/login_entity.dart';

abstract class LoginLocalDataSource
{
  Future<bool> loginWithEmail(LoginEntity credentials);
  Future<bool> loginWithPhone(LoginEntity credentials);
}

class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  @override
  Future<bool> loginWithEmail(LoginEntity credentials) async {
    try {
      // Load JSON file
      final String jsonString = await rootBundle.loadString('assets/json/login_email.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      // Get users array
      final List<dynamic> users = jsonData['usersInfo'] as List<dynamic>;
      
      // Check if credentials match any user
      return users.any((user) => 
        user['email'] == credentials.email && 
        user['password'] == credentials.password
      );
      
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }

  @override
  Future<bool> loginWithPhone(LoginEntity credentials) async
  {
    try
    {
      // Load JSON file
      final String jsonString = await rootBundle.loadString('assets/json/login_phone.json');
      final List<dynamic> users = json.decode(jsonString) as List<dynamic>;
      
      // Check if credentials match any user
      return users.any((user) => 
        user['phone'] == credentials.phone && 
        user['password'] == credentials.password
      );
      
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }
}
