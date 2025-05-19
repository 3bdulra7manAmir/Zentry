import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedDateProvider = AutoDisposeNotifierProvider<SelectedDateNotifier, DateTime>(SelectedDateNotifier.new,);

class SelectedDateNotifier extends AutoDisposeNotifier<DateTime>
{
  @override
  DateTime build()
  {
    return DateTime.now();
  }

  void updateDate(DateTime newDate)
  {
    state = newDate;
  }
}
