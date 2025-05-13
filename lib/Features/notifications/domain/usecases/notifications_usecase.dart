import 'package:dartz/dartz.dart';
import '../../../../core/utils/app_usecase.dart';
import '../../../../core/utils/errors/api_fetch_failure.dart';
import '../entity/notification_entity.dart';
import '../repository/notifications_repository.dart';

class NotificationsUsecase extends AppUsecase
{
  final NotificationsRepo notificationsRepo;
  NotificationsUsecase(this.notificationsRepo);

  @override
  Future<Either<ApiFetchFailure, List<NotificationEntity>>> call([param]) async
  {
    try
    {
      final result = await notificationsRepo.getNotifications();
      return Right(result);
    }

    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}