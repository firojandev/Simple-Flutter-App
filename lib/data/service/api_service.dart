import '../models/api_response.dart';

abstract class ApiService {
  void init({required String baseURL});

  Future<ApiResponse> get({required String path, Map<String, dynamic>? query});
}
