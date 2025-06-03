import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/usecases/notifications_usecase.dart';
import 'notifications_repository_provider.dart';

part 'notifications_usecase_provider.g.dart';

@riverpod
NotificationsUsecase notificationsUsecase(NotificationsUsecaseRef ref)
{
  final repository = ref.watch(notificationsRepositoryProvider);
  return NotificationsUsecase(repository);
}