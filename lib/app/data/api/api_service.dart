import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseApiUrl = dotenv.env["BASE_API_URL"]!;

  Future<ApiResult<T>> get<T>({
    required String endPoint,
    Map<String, dynamic>? params,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response =
          await _dio.get(_baseApiUrl + endPoint, queryParameters: params);
      return ApiResult(
        statusCode: response.statusCode,
        data: fromJson(response.data),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        return ApiResult(
          statusCode: e.response!.statusCode,
          message: e.response!.data[0],
        );
      } else {
        return ApiResult(
          statusCode: 500,
          message: "Error network: ${e.message}",
        );
      }
    } catch (e) {
      return ApiResult(
        statusCode: 500,
        message: "Unexpected error $e",
      );
    }
  }

  Future<ApiResult<T>> post<T>({
    required String endPoint,
    dynamic body,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final response = await _dio.post(_baseApiUrl + endPoint, data: body);
      return ApiResult(
        statusCode: response.statusCode,
        data: fromJson(response.data),
      );
    } on DioException catch (e) {
      if (e.response != null) {
        return ApiResult(
          statusCode: e.response!.statusCode,
          message: e.response!.data[0],
        );
      } else {
        return ApiResult(
          statusCode: 500,
          message: "Error network: ${e.message}",
        );
      }
    } catch (e) {
      return ApiResult(
        statusCode: 500,
        message: "Unexpected error $e",
      );
    }
  }
}

class ApiResult<T> {
  final int? statusCode;
  final T? data;
  final String? message;

  ApiResult({this.statusCode, this.data, this.message});
}
