import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/repository/notifications_repository_impl.dart';
import '../../../domain/repository/notifications_repository.dart';
import 'notifications_local_data_source_controller.dart';

part 'notifications_repository_controller.g.dart';

@riverpod
NotificationsRepo notificationsRepository(Ref ref)
{
  final localDataSource = ref.watch(notificationsLocalDataSourceProvider);
  return NotificationsRepoImpl(localDataSource: localDataSource);
}
