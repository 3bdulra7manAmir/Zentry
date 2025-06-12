// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../app_database.dart';

// final isFirstLaunchProvider = FutureProvider<bool>((ref) async
// {
//   return await UserPreferences.instance.getCachedIsFirstLaunch();
// });


// ref.watch(isFirstLaunchProvider).when(
//   data: (isFirstLaunch) {
//     if (isFirstLaunch) {
//       return const OnboardingScreen();
//     } else {
//       return const HomeScreen();
//     }
//   },
//   loading: () => const CircularProgressIndicator(),
//   error: (err, _) => Text('Error: $err'),
// );
