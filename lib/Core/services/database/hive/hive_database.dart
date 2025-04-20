import 'package:hive_flutter/adapters.dart';
import '../../../../features/auth/app_form/domain/entity/app_form_entity.dart';
import '../../../../features/auth/login_and_register/domain/entity/login_entity.dart';
import 'hive_boxes_names.dart';

class HiveLocalSourceDatabase
{
  HiveLocalSourceDatabase._();
  static HiveLocalSourceDatabase? _instance;
  static HiveLocalSourceDatabase get instance => _instance!;

  late Box<LoginEntity> _loginDataDb;
  late Box<AppFormEntity> _appFormDb;

  Box<LoginEntity> get loginDb => _loginDataDb;
  Box<AppFormEntity> get appFormDb => _appFormDb;

  Future<void> initHiveDataBase() async
  {
    await Hive.initFlutter();

    /// Registering Hive Adapters
    Hive.registerAdapter(LoginDataAdaptor());
    //Hive.registerAdapter(AppFormDataAdaptor());

    /// Hive Boxes Opening
    await Hive.openBox<LoginDataAdaptor>(HiveBoxesNames.loginDataBox);
    //await Hive.openBox<AppFormEntity>('AppFormData');

    /// Hive Database
    _loginDataDb = Hive.box(HiveBoxesNames.loginDataBox);
   // _appFormDb = Hive.box(HiveBoxesNames.appFormBox);
  }

  get close async => await Hive.close();
}
