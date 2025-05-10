import 'package:dartz/dartz.dart';
import '../../../../core/utils/app_usecase.dart';
import '../../../../core/utils/errors/api_fetch_failure.dart';
import '../entity/story_entity.dart';
import '../repository/story_repository.dart';

class StoryUsecase extends AppUsecase
{
  final StoryRepo storyRepo;
  StoryUsecase(this.storyRepo);

  @override
  Future<Either<ApiFetchFailure, List<StoryEntity>>> call([param]) async
  {
    try
    {
      final result = await storyRepo.getStories();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}