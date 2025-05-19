import '../../domain/repository/login_email_repository.dart';
import '../../domain/entity/login_email_entity.dart';
import '../datasources/login_email_local_data_source.dart';

class LoginEmailRepoImpl implements LoginEmailRepo
{
  final LoginEmailLocalDataSource localDataSource;

  const LoginEmailRepoImpl({required this.localDataSource});

  @override
  Future<List<LoginEmailEntity>> getEmails() async
  {
    try
    {
      return await localDataSource.getLoingInfo();
    }
    catch (e)
    {
      throw Exception('Failed to get notifications: $e');
    }
  }
}