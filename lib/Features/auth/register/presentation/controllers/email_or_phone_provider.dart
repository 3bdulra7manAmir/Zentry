import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SignUpType { phone, email }

class SignUpTypeNotifier extends StateNotifier<SignUpType>
{
  SignUpTypeNotifier() : super(SignUpType.phone);

  void toggleSignUpType()
  {
    state = (state == SignUpType.phone) ? SignUpType.email : SignUpType.phone;
  }
}

final signUpTypeProvider = StateNotifierProvider<SignUpTypeNotifier, SignUpType>((ref,)
{
  return SignUpTypeNotifier();
});
