import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:master_app/app/constants/constants.dart';

class ShowUppInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('REQUEST:  ${options.data}');
    options.headers.addAll({
      'x-accept-lang': 'ru',
      'x-mobile-token': Constants.x_mobile_token,
    });

    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log(err.response!.data.toString());
    super.onError(err, handler);
  }

  @override
  // ignore: strict_raw_type
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(response.data.toString());
    super.onResponse(response, handler);
  }
}
