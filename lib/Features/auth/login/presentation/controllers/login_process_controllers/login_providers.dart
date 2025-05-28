import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/datasources/login_local_data_source.dart';
import '../../../data/repository/login_repository_impl.dart';
import '../../../domain/entity/login_entity.dart';
import '../../../domain/repository/login_repository.dart';

part 'login_providers.g.dart';

@riverpod
LoginLocalDataSource loginLocalDataSource(LoginLocalDataSourceRef ref)
{
  return LoginLocalDataSourceImpl();
}

@riverpod
LoginRepo loginRepository(LoginRepositoryRef ref)
{
  final localDataSource = ref.watch(loginLocalDataSourceProvider);
  return LoginRepoImpl(localDataSource: localDataSource);
}

@riverpod
class LoginState extends _$LoginState
{
  @override
  AsyncValue<bool> build()
  {
    return const AsyncValue.data(false);
  }

  Future<void> loginWithEmail(String email, String password) async
  {
    state = const AsyncValue.loading();
    final repo = ref.read(loginRepositoryProvider);
    final result = await repo.loginWithEmail(LoginEntity.withEmail(email: email, password: password,));
    
    state = result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (success) => AsyncValue.data(success),
    );
  }

  Future<void> loginWithPhone(String phone, String password) async
  {
    state = const AsyncValue.loading();
    final repo = ref.read(loginRepositoryProvider);
    final result = await repo.loginWithPhone(LoginEntity.withPhone(phone: phone, password: password,));
    
    state = result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (success) => AsyncValue.data(success),
    );
  }
}