// import 'package:hive_flutter/adapters.dart';
// import '../../../../features/app_settings/domain/entity/app_form_entity.dart';
// import 'hive_boxes_names.dart';

// class HiveLocalSourceDatabase
// {
//   HiveLocalSourceDatabase._();

//   static final HiveLocalSourceDatabase _instance = HiveLocalSourceDatabase._();
//   static HiveLocalSourceDatabase get instance => _instance;

//   late Box<LoginEntity> _loginDataDb;
//   late Box<AppFormEntity> _appFormDb;

//   Box<LoginEntity> get loginDb => _loginDataDb;
//   Box<AppFormEntity> get appFormDb => _appFormDb;

//   Future<void> initHiveDataBase() async
//   {
//     await Hive.initFlutter();

//     Hive.registerAdapter(LoginDataAdaptor());
//     //Hive.registerAdapter(AppFormDataAdaptor());

//     await Hive.openBox<LoginEntity>(HiveBoxesNames.loginDataBox);
//     //await Hive.openBox<AppFormEntity>(HiveBoxesNames.appFormBox);

//     _loginDataDb = Hive.box<LoginEntity>(HiveBoxesNames.loginDataBox);
//     //_appFormDb = Hive.box<AppFormEntity>(HiveBoxesNames.appFormBox);
//   }

//   Future<void> close() async => await Hive.close();
// }
