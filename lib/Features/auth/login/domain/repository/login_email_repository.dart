import '../entity/login_email_entity.dart';

abstract class LoginEmailRepo
{
  Future<List<LoginEmailEntity>> getEmails();
}
