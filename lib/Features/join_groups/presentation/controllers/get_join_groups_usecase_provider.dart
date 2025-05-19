import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecase/get_join_groups_usecase.dart';
import 'join_groups_repository_provider.dart';

final getJoinGroupsUseCaseProvider = Provider<GetJoinGroupsUseCase>((ref) {
  final repository = ref.watch(joinGroupsRepositoryProvider);
  return GetJoinGroupsUseCase(repository);
});
