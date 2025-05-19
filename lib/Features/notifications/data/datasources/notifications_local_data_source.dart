import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/notification_entity.dart';

abstract class NotificationsLocalDataSource {
  Future<List<NotificationEntity>> getNotifications();
}

class NotificationsLocalDataSourceImpl implements NotificationsLocalDataSource {
  @override
  Future<List<NotificationEntity>> getNotifications() async {
    try {
      // Load JSON file
      final String jsonString = await rootBundle.loadString('assets/json/notifications_screen.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      // Parse notifications array
      final List<dynamic> notificationsJson = jsonData['notifications'] ?? [];
      
      // Map JSON data to NotificationEntity objects
      return notificationsJson.map((notification) => NotificationEntity.fromJson(notification)).toList();
    } catch (e) {
      throw Exception('Failed to load notifications: $e');
    }
  }
}
