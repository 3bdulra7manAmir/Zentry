import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repository/login_email_repository_impl.dart';
import '../../domain/entity/login_email_entity.dart';
import 'login_email_local_data_source_provider.dart';
import 'login_email_state_notifier.dart';

// Repository provider
final loginEmailRepositoryProvider = Provider<LoginEmailRepoImpl>((ref)
{
  final localDataSource = ref.watch(loginEmailLocalDataSourceProvider);
  return LoginEmailRepoImpl(localDataSource: localDataSource);
});

// Login state provider
final loginEmailStateProvider = StateNotifierProvider<LoginEmailStateNotifier, AsyncValue<List<LoginEmailEntity>>>((ref)
{
  final repository = ref.watch(loginEmailRepositoryProvider);
  return LoginEmailStateNotifier(repository);
});