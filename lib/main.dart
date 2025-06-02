import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'core/services/database/shared_preference/app_database.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.instance.init();
  runApp(const ProviderScope(child: TestApp()));
}

