import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'otp_input_controller.g.dart';

@riverpod
class OtpInput extends _$OtpInput
{
  @override
  String build() => '';

  void addDigit(String digit, {required int maxLength})
  {
    if (state.length < maxLength)
    {
      state += digit;
    }
  }

  void removeDigit() {
    if (state.isNotEmpty)
    {
      state = state.substring(0, state.length - 1);
    }
  }

  void clear() => state = '';
}
