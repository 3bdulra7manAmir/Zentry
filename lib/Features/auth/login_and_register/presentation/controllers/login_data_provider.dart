import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasources/login_local_datasource.dart';
import '../../data/datasources/login_remote_datasource.dart';
import '../../domain/repo/login_repo.dart';
import '../../domain/usecase/login_usecase.dart';

part 'login_data_provider.g.dart';


@riverpod
Future<bool> loginCheck(LoginCheckRef ref, ({String email, String password}) input) async
{
  final useCase = ref.watch(domainLoginUsecaseProvider);
  final result = await useCase();

  return result.fold(
    (failure) => throw failure,
    (users)
    {
      return users.any((user) => user.email == input.email && user.password == input.password,);
    },
  );
}


final domainLoginUsecaseProvider = Provider<DomainLoginUsecase>((ref)
{
  final repo = ref.watch(domainLoginRepoProvider);
  return DomainLoginUsecase(repo);
});


final domainLoginRepoProvider = Provider<DomainLoginRepo>((ref)
{
  final remote = ref.watch(loginRemoteDatasourceProvider);
  final local = ref.watch(loginLocalDatasourceProvider);
  return DomainLoginRepoImplementation(remote, local);
});

final loginRemoteDatasourceProvider = Provider<LoginRemoteDatasource>((ref)
{
  return LoginRemoteDatasourceImplementation(); // Inject API client if needed
});

final loginLocalDatasourceProvider = Provider<LoginLocalDatasource>((ref)
{
  return LoginLocalDatasourceImplementation(); // Inject DB, Hive, etc. if needed
});
