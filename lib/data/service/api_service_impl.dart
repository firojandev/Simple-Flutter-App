import 'package:dio/dio.dart';
import 'package:flutter_workflow/data/models/api_response.dart';
import 'package:flutter_workflow/data/service/api_service.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class ApiServiceImpl extends ApiService {
  late Dio _dio;

  @override
  void init({required String baseURL}) {
    _dio = Dio(
      BaseOptions(
        baseUrl: baseURL,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    _dio.interceptors.add(TalkerDioLogger(
        settings: const TalkerDioLoggerSettings(
      printRequestHeaders: true,
      printResponseHeaders: true,
      printResponseMessage: true,
    )));
  }

  @override
  Future<ApiResponse> get({
    required String path,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: query);

      return ApiResponse.fromDioResponse(
        response,
      );
    } on DioException catch (e) {
      return ApiResponse.error(e.toString());
    } catch (e) {
      return ApiResponse.error(e.toString());
    }
  }
}
