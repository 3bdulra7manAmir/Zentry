import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpInputProvider = StateNotifierProvider<OtpInputNotifier, String>(
  (ref) => OtpInputNotifier(),
);

class OtpInputNotifier extends StateNotifier<String> {
  OtpInputNotifier() : super('');
  void addDigit(String digit, {required int maxLength}) {
    if (state.length < maxLength) {
      state += digit;
    }
  }

  void removeDigit() {
    if (state.isNotEmpty) {
      state = state.substring(0, state.length - 1);
    }
  }

  void clear() => state = '';
}
