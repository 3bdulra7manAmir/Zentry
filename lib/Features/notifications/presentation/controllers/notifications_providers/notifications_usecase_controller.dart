import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/usecases/notifications_usecase.dart';
import 'notifications_repository_controller.dart';

part 'notifications_usecase_controller.g.dart';

@riverpod
NotificationsUsecase notificationsUsecase(Ref ref)
{
  final repository = ref.watch(notificationsRepositoryProvider);
  return NotificationsUsecase(repository);
}