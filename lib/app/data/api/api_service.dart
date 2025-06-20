import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseApiUrl = dotenv.env["BASE_API_URL"]!;

  Options _buildOptions({Map<String, dynamic>? files}) {
    return Options(headers: {
      "Authorization": "a101",
      "Content-Type": files == null ? "application/json" : "multipart/form-data"
    });
  }

  Future<dynamic> _buildBody(dynamic data, Map<String, XFile>? files) async {
    if (files != null) {
      return FormData.fromMap({
        if (data != null) ...data,
        for (var file in files.entries)
          file.key: await MultipartFile.fromFile(
            file.value.path,
            filename: file.value.name,
          )
      });
    } else {
      return data;
    }
  }

  Future<ApiResult<T>> get<T>({
    required String endPoint,
    Map<String, dynamic>? params,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      debugPrint("GET API: $endPoint with params $params");

      final response = await _dio.get(
        _baseApiUrl + endPoint,
        queryParameters: params,
        options: _buildOptions(),
      );
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
    dynamic data,
    Map<String, XFile>? files,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      final body = await _buildBody(data, files);
      final response = await _dio.post(
        _baseApiUrl + endPoint,
        data: body,
        options: _buildOptions(files: files),
      );
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
