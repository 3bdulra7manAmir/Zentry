import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/login_entity.dart';

abstract class LoginLocalDataSource
{
  Future<bool> loginWithEmail(LoginEntity credentials);
  Future<bool> loginWithPhone(LoginEntity credentials);
}

class LoginLocalDataSourceImpl implements LoginLocalDataSource
{
  @override
  Future<bool> loginWithEmail(LoginEntity credentials) async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/login_email.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> users = jsonData['usersInfo'] as List<dynamic>;
      return users.any((user) // Check if credentials match any user
      {
        final userMap = user as Map<String, dynamic>;
        return userMap['email'] == credentials.email &&  userMap['password'] == credentials.password;
      });
      
    }
    catch (e)
    {
      throw Exception('Failed to login: $e');
    }
  }

  @override
  Future<bool> loginWithPhone(LoginEntity credentials) async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/login_phone.json');
      final List<dynamic> users = json.decode(jsonString) as List<dynamic>;
      return users.any((user) // Check if credentials match any user
      {
        final userMap = user as Map<String, dynamic>;
        return userMap['phone'] == credentials.phone && userMap['password'] == credentials.password;
      });
      
    }
    catch (e)
    {
      throw Exception('Failed to login: $e');
    }
  }
}
