import 'package:dio/dio.dart';

abstract class Failure {
  String errorMessage;
  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request cancelled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(errorMessage: 'No internet connection');
        }
        return ServerFailure(errorMessage: 'Unexpected error');
      default:
        return ServerFailure(errorMessage: 'Unexpected error,try agian');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
        return ServerFailure(errorMessage: 'Bad request');
      case 401:
        return ServerFailure(errorMessage: 'Unauthorized');
      case 403:
        return ServerFailure(errorMessage: 'Forbidden');
      case 404:
        return ServerFailure(errorMessage: 'Not found');
      case 500:
        return ServerFailure(errorMessage: 'Internal server error');
      default:
        return ServerFailure(errorMessage: 'Something went wrong');
    }
  }
}
