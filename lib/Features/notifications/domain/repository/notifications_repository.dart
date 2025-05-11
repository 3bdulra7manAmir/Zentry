import '../entity/notification_entity.dart';

abstract class NotificationsRepo {
  Future<List<NotificationEntity>> getNotifications();
}
