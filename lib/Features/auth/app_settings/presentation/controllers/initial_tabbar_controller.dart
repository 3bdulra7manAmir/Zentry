import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabIndexNotifier extends StateNotifier<int>
{
  TabIndexNotifier() : super(0); // default to Sign Up tab (index 1)

  void setIndex(int index) => state = index;
}


final tabIndexProvider = StateNotifierProvider<TabIndexNotifier, int>((ref) {
  return TabIndexNotifier();
});
