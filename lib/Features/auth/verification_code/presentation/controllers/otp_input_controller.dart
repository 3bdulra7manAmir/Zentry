import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpInputProvider = StateNotifierProvider<OtpInputNotifier, String>((ref) => OtpInputNotifier());

class OtpInputNotifier extends StateNotifier<String>
{
  OtpInputNotifier() : super('');

  void addDigit(String digit)
  {
    if (state.length < 5)
    {
      state += digit;
    }
  }

  void removeDigit()
  {
    if (state.isNotEmpty)
    {
      state = state.substring(0, state.length - 1);
    }
  }

  void clear() => state = '';
}
