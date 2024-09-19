import 'package:dio/dio.dart';

import 'api_error_model.dart';

// TODO: wallahy I will refactor this .. Omar Ahmed

class ErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failure");
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to server was canceled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout was the server");
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message:
                  "Connection to server failed due to internet connection");
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: "Recieve timeout to connectio with server");
        case DioExceptionType.badResponse:
          return handelError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: "Send time in connection with server");

        default:
          ApiErrorModel(message: "Something went wrong");
      }
    }
    return ApiErrorModel(message: "Unknown error eccured");
  }
}

ApiErrorModel handelError(dynamic data) {
  return ApiErrorModel(
      message: data['message'] ?? "Unknown error eccured",
      code: data['code'],
      errors: data['data']);
}
