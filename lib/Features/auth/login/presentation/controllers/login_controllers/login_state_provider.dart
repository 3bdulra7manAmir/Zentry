import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../domain/entity/login_entity.dart';
import 'login_providers.dart';

part 'login_state_provider.g.dart';

@riverpod
class LoginState extends _$LoginState
{
  @override
  AsyncValue<bool> build() {
    return const AsyncValue.data(false);
  }

  Future<void> loginWithEmail(String email, String password) async
  {
    state = const AsyncValue.loading();
    
    try
    {
      final loginRepo = ref.read(loginRepositoryProvider);
      final result = await loginRepo.loginWithEmail(
        LoginEntity.withEmail(email: email, password: password)
      );
      
      state = result.fold(
        (failure) => AsyncValue.error(failure, StackTrace.current),
        (success) => AsyncValue.data(success)
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> loginWithPhone(String phone, String password) async {
    state = const AsyncValue.loading();
    
    try {
      final loginRepo = ref.read(loginRepositoryProvider);
      final result = await loginRepo.loginWithPhone(
        LoginEntity.withPhone(phone: phone, password: password)
      );
      
      state = result.fold(
        (failure) => AsyncValue.error(failure, StackTrace.current),
        (success) => AsyncValue.data(success)
      );
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
