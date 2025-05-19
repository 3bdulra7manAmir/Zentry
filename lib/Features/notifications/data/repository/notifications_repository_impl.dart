import '../../domain/repository/notifications_repository.dart';
import '../../domain/entity/notification_entity.dart';
import '../datasources/notifications_local_data_source.dart';

class NotificationsRepoImpl implements NotificationsRepo {
  final NotificationsLocalDataSource localDataSource;

  const NotificationsRepoImpl({required this.localDataSource});

  @override
  Future<List<NotificationEntity>> getNotifications() async {
    try {
      return await localDataSource.getNotifications();
    } catch (e) {
      throw Exception('Failed to get notifications: $e');
    }
  }
}