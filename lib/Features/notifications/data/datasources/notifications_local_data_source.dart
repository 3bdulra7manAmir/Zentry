import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/notification_entity.dart';

abstract class NotificationsLocalDataSource
{
  Future<List<NotificationEntity>> getNotifications();
}

class NotificationsLocalDataSourceImpl implements NotificationsLocalDataSource
{
  @override
  Future<List<NotificationEntity>> getNotifications() async
  {
    try
    {
      final String jsonString = await rootBundle.loadString('assets/json/notifications_screen.json'); // Load JSON file
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> notificationsJson = jsonData['notifications'] ?? []; // Parse notifications array
      return notificationsJson.map((notification) => NotificationEntity.fromJson(notification)).toList(); // Map JSON data to NotificationEntity objects
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }
}
