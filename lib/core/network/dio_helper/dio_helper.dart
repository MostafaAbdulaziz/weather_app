import 'package:dio/dio.dart';

class DioHelper {
  static final dio = Dio();
  static Future<Response> getData({required String api}) async =>
      await dio.get(api);
}
