import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entity/login_email_entity.dart';
import '../../data/repository/login_email_repository_impl.dart';

class LoginEmailStateNotifier extends StateNotifier<AsyncValue<List<LoginEmailEntity>>>
{
  final LoginEmailRepoImpl _repository;

  LoginEmailStateNotifier(this._repository) : super(const AsyncValue.loading())
  {
    _loadLoginData();
  }

  Future<void> _loadLoginData() async
  {
    try {
      state = const AsyncValue.loading();
      final emails = await _repository.getEmails();
      state = AsyncValue.data(emails);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
}