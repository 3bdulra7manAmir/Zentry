import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'core/services/database/hive/hive_database.dart';
import 'core/services/database/shared_preference/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  UserPreferences.instance.init();
  HiveLocalSourceDatabase.instance.initHiveDataBase();

  runApp(const ProviderScope(child: TestApp()));
}
