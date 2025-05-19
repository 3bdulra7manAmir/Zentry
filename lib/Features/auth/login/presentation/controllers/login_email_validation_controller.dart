import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'login_email_controller.dart';

final loginEmailValidationProvider = FutureProvider.family<bool, ({String email, String password})>((ref, credentials) async
{
  try {
    print('Starting validation for email: ${credentials.email}');
    // Get the current state
    final loginStateResult = ref.watch(loginEmailStateProvider);
    return loginStateResult.when(
      data: (users)
      {
        print('Found ${users.length} users in database');
        final isValid = users.any((user)
        {
          final matches = user.userEmail == credentials.email && user.userPassword == credentials.password;
          print('Checking user ${user.userEmail}: $matches');
          return matches;
        });
        print('Final validation result: $isValid');
        return isValid;
      },
      loading: ()
      {
        print('State is loading');
        return false;
      },
      error: (error, stack)
      {
        print('State error: $error');
        return false;
      }
    );
  }
  catch (e)
  {
    print('Validation error: $e');
    return false;
  }
});