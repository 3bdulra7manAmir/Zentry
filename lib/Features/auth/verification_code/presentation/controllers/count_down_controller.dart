import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'count_down_controller.g.dart';

@riverpod
class ResendCountdown extends _$ResendCountdown
{
  static const int _initialSeconds = 60;
  Timer? _timer;

  @override
  int build(BuildContext context)
  {
    _startCountdown();
    return _initialSeconds;
  }

  void _startCountdown()
  {
    int seconds = _initialSeconds;

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer)
    {
      seconds--;
      if (seconds <= 0)
      {
        timer.cancel();
      }
      state = seconds;
    });
  }

  void reset()
  {
    _startCountdown();
    state = _initialSeconds;
  }

  void onDispose()
  {
    _timer?.cancel();
  }
}
