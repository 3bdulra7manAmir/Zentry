import 'package:dio/dio.dart';

class AppApiService
{
  AppApiService._internal()
  {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://68039c770a99cb7408ec8290.mockapi.io/testapp/api/v1/',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers:
        {
          'Accept': 'application/json',
        },
      ),
    );
  }

  static final AppApiService _instance = AppApiService._internal();
  late final Dio _dio;
  static Dio get dio => _instance._dio;

  static AppApiService get instance => _instance;
  Future<List<dynamic>> get({required String endPoint}) async
  {
    final response = await _dio.get(endPoint);
    return response.data;
  }
}
