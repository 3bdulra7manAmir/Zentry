import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/local_data_source.dart';

final joinGroupsLocalDataSourceProvider = Provider<JoinGroupsLocalDataSource>((ref) {
  return JoinGroupsLocalDataSource();
});
