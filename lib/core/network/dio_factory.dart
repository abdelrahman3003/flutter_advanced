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
      addDioHEaders();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterPreter() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseHeader: true));
  }

  static void addDioHEaders() {
    dio?.options.headers = {
      "Accept": "application/json",
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzIzOTIxNzAwLCJleHAiOjE3MjQwMDgxMDAsIm5iZiI6MTcyMzkyMTcwMCwianRpIjoib0c2ZkNDVHVUUk1rOVV5QSIsInN1YiI6IjE4MzEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.HnUr0RZOkXAJKigU9H1BmO4d6Xq8J9LaPyAC1pmQgnk",
    };
  }
}
