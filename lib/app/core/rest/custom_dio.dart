import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:fwc_album_app/app/core/config/env.dart';

class CustomDio extends DioForNative {
  CustomDio()
      : super(BaseOptions(
          baseUrl: Env.instance['BACKEND_BASE_URL'] ?? '',
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 60),
        )) {
    interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  CustomDio auth() {
    return this;
  }

  CustomDio unauth() {
    return this;
  }
}
