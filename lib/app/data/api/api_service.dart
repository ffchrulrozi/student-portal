import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseApiUrl = dotenv.env["BASE_API_URL"]!;

  Future<T> list<T>({
    required String endPoint,
    Map<String, dynamic>? params,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    final response =
        await _dio.get(_baseApiUrl + endPoint, queryParameters: params);
    var data = response.data;
    return fromJson(data);
  }
}
