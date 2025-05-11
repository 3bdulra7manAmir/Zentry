import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/entity/notification_entity.dart';
import 'notifications_usecase_provider.dart';

part 'notifications_items_provider.g.dart';

@riverpod
Future<List<NotificationEntity>> notificationsItems(NotificationsItemsRef ref) async {
  final usecase = ref.watch(notificationsUsecaseProvider);
  final result = await usecase.call();
  return result.fold(
    (failure) => throw failure,
    (notifications) => notifications,
  );
}
