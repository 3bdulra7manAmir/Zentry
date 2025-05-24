import 'package:flutter_riverpod/flutter_riverpod.dart';

class DatePickerState
{
  final int year;
  final int month;
  final int day;

  DatePickerState({
    required this.year,
    required this.month,
    required this.day,
  });

  DatePickerState copyWith({int? year, int? month, int? day})
  {
    return DatePickerState(
      year: year ?? this.year,
      month: month ?? this.month,
      day: day ?? this.day,
    );
  }
}


class DatePickerStateNotifier extends StateNotifier<DatePickerState>
{
  DatePickerStateNotifier(DateTime initialDate)
      : super(DatePickerState(
          year: initialDate.year,
          month: initialDate.month,
          day: initialDate.day,
        ));

  void setYear(int year)
  {
    state = state.copyWith(year: year);
    adjustDay();
  }

  void setMonth(int month)
  {
    state = state.copyWith(month: month);
    adjustDay();
  }

  void setDay(int day)
  {
    state = state.copyWith(day: day);
  }

  void adjustDay()
  {
    final lastDay = DateTime(state.year, state.month + 1, 0).day;
    if (state.day > lastDay)
    {
      state = state.copyWith(day: lastDay);
    }
  }
}

final datePickerStateProvider = StateNotifierProvider.autoDispose
    .family<DatePickerStateNotifier, DatePickerState, DateTime>(
  (ref, initialDate) => DatePickerStateNotifier(initialDate),
);
