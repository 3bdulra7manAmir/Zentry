import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/business_local_data_source.dart';

part 'businesses_local_data_source_controller.g.dart';

@riverpod
BusinessLocalDataSource businessLocalDataSource(Ref ref) {
  return BusinessLocalDataSource();
}
