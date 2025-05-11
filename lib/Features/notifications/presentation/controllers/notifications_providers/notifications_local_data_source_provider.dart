import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/datasources/notifications_local_data_source.dart';

part 'notifications_local_data_source_provider.g.dart';

@riverpod
NotificationsLocalDataSource notificationsLocalDataSource(NotificationsLocalDataSourceRef ref) {
  return NotificationsLocalDataSourceImpl();
}
