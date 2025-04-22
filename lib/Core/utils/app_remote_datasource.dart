// import 'package:hive/hive.dart';
// import '../services/network/api_service.dart';

// abstract class RemoteDatasource<T>
// {
//   final String endPoint;
//   final T Function(Map<String, dynamic>) fromJson;
//   final Box<T> Function() getBox;

//   RemoteDatasource({
//     required this.endPoint,
//     required this.fromJson,
//     required this.getBox,
//   });

//   Future<List<T>> fetchData() async
//   {
//     final dataHolder = await apiRequest();
//     await saveToLocalDatabase(dataHolder);
//     return dataHolder;
//   }

//   Future<List<T>> apiRequest() async
//   {
//     final apiDataRequest = await AppApiService.instance.get(endPoint: endPoint);
//     return apiDataRequest.map<T>((json) => fromJson(json)).toList();
//   }

//   Future<void> saveToLocalDatabase(List<T> data) async
//   {
//     final loginDataSaverInDataBase = getBox();
//     await loginDataSaverInDataBase.addAll(data);
//   }
// }
