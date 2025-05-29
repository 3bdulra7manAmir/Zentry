import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SignUpType { phone, email, invite, fullname }

class SignUpTypeNotifier extends StateNotifier<SignUpType>
{
  SignUpTypeNotifier() : super(SignUpType.phone);

  void toggleSignUpEmailPhone()
  {
    state = (state == SignUpType.phone) ? SignUpType.email : SignUpType.phone;
  }
  void toggleSignUpFullnameInvite()
  {
    state = (state == SignUpType.invite) ? SignUpType.invite : SignUpType.fullname;
  }
}

final signUpTypeProvider = StateNotifierProvider<SignUpTypeNotifier, SignUpType>((ref,)
{
  return SignUpTypeNotifier();
});
