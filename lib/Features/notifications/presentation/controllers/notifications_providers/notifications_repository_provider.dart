import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repository/notifications_repository_impl.dart';
import '../../../domain/repository/notifications_repository.dart';
import 'notifications_local_data_source_provider.dart';

final notificationsRepositoryProvider = Provider<NotificationsRepo>((ref) {
  final localDataSource = ref.watch(notificationsLocalDataSourceProvider);
  return NotificationsRepoImpl(localDataSource: localDataSource);
});