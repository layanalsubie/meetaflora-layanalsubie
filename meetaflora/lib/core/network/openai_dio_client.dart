import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'api_endpoints.dart';

@lazySingleton
class OpenAiDioClient {
  late final Dio _dio;

  OpenAiDioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.openAiBaseUrl,
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final key = dotenv.env['openai_key'] ?? '';
          options.headers['Authorization'] = 'Bearer $key';
          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (error, handler) {
          handler.next(error);
        },
      ),
    );
  }

  Future<Response> post(String path, {dynamic data}) {
    return _dio.post(path, data: data);
  }
}