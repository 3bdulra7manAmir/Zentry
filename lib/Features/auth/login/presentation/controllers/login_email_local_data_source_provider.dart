import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/login_email_local_data_source.dart';

final loginEmailLocalDataSourceProvider = Provider<LoginEmailLocalDataSource>((ref)
{
  return LoginEmailLocalDataSourceImpl();
});
