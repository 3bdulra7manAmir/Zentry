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
      await Future.delayed(const Duration(seconds: 3));
      final String jsonString = await rootBundle.loadString('assets/json/notifications_screen.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> notificationsJson = jsonData['notifications'] ?? [];
      return notificationsJson.map((notification) => NotificationEntity.fromJson(notification)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load notifications: $e');
    }
  }
}
