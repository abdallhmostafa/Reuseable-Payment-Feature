import 'package:dio/dio.dart';

class ApiService {
  ApiService._();
  static final ApiService _instance = ApiService._();
  factory ApiService() => _instance;
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.stripe.com/v1/',
      sendTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      contentType: 'application/x-www-form-urlencoded',
    ),
  );

  Future<Response> post(
      {required String url,
      required body,
      required String token,
      Map<String, dynamic>? queryParameters}) async {
    return await _dio.post(
      url,
      queryParameters: queryParameters,
      data: body,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );
  }
}
