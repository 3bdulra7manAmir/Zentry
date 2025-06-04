import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/datasources/notifications_local_data_source.dart';

part 'notifications_local_data_source_controller.g.dart';

@riverpod
NotificationsLocalDataSource notificationsLocalDataSource(Ref ref)
{
  return NotificationsLocalDataSourceImpl();
}
