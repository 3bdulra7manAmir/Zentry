import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SignUpType { phone, email, invite, fullname }

class SignUpTypeNotifier extends StateNotifier<SignUpType>
{
  SignUpTypeNotifier() : super(SignUpType.phone);

  void toggleSignUp(SignUpType targetType)
  {
    if (state != targetType)
    {
      state = targetType;
    }
}
}

final signUpTypeProvider = StateNotifierProvider<SignUpTypeNotifier, SignUpType>((ref,)
{
  return SignUpTypeNotifier();
});
