import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';

class HttpService {
  late Dio _dio;

  HttpService._internal() {
    var options = BaseOptions(
      connectTimeout: const Duration(milliseconds: 10000),
      sendTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
      headers: {'Content-Type': 'application/json'},
      responseType: ResponseType.json,
    );
    _dio = Dio(options);
    _dio.interceptors.add(HttpFormatter());
  }

  factory HttpService() => _instance;

  static final HttpService _instance = HttpService._internal();

  Future<T> get<T>(String url,
      {Map<String, dynamic>? params,
      Options? options,
      CancelToken? cancelToken}) async {
    Response response = await _dio.get(url,
        queryParameters: params, options: options, cancelToken: cancelToken);
    return response.data as T;
  }

  Future<T> post<T>(String url,
      {Map<String, dynamic>? params,
      Options? options,
      CancelToken? cancelToken}) async {
    Response response = await _dio.post(url,
        data: params, options: options, cancelToken: cancelToken);
    return response.data as T;
  }
}
