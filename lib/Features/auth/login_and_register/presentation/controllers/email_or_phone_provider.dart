import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define an enum for login types
enum LoginType { phone, email }

// StateNotifier to manage the current login type
class LoginTypeNotifier extends StateNotifier<LoginType>
{
  LoginTypeNotifier() : super(LoginType.phone);

  // Method to toggle login type
  void toggleLoginType()
  {
    state = (state == LoginType.phone) ? LoginType.email : LoginType.phone;
  }
}

// Provider for LoginTypeNotifier
final loginTypeProvider = StateNotifierProvider<LoginTypeNotifier, LoginType>((ref)
{
  return LoginTypeNotifier();
});
