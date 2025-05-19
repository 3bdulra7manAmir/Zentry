import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LoginType { phone, email }

class LoginTypeNotifier extends StateNotifier<LoginType>
{
  LoginTypeNotifier() : super(LoginType.phone);

  void toggleLoginType()
  {
    state = (state == LoginType.phone) ? LoginType.email : LoginType.phone;
  }
}

final loginTypeProvider = StateNotifierProvider<LoginTypeNotifier, LoginType>((ref,)
{
  return LoginTypeNotifier();
});
