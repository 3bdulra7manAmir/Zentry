import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav_index_provider.g.dart';

@riverpod
class BottomNavIndex extends _$BottomNavIndex
{
  @override
  int build() => 0;

  void setIndex(int index) => state = index;
}
