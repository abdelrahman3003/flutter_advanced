import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static Dio? dio;
  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!..options.connectTimeout = timeout;
      dio!..options.receiveTimeout = timeout;
      addDioInterPreter();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterPreter() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseHeader: true));
  }
}
