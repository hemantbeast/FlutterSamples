import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news/utils/app_constants.dart';
import 'package:news/utils/typedefs.dart';
import 'package:news/utils/url.dart';

class BaseService {
  final dio = createDio();

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: Url.apiUrl,
      connectTimeout: 20000,
      receiveTimeout: 20000,
      sendTimeout: 20000,
      contentType: 'application/json',
    ));
    return dio;
  }

  @protected
  Future<JSON?> apiRequest({required String url, required ApiMethod method, dynamic content}) async {
    Response? response;
    try {
      switch (method) {
        case ApiMethod.get:
          response = await dio.get(url);
          break;
        case ApiMethod.delete:
          response = await dio.delete(url);
          break;
        case ApiMethod.post:
          response = await dio.post(url, data: content);
          break;
        case ApiMethod.put:
          response = await dio.put(url, data: content);
          break;
      }

      if (kDebugMode) {
        var message = '''
        Url: ${Url.apiUrl}$url
        Status code: ${response.statusCode}
        Headers: ${response.requestOptions.headers}
        Response: ${response.data}
        ''';
        log(message);
      }
    } on DioError catch (e) {
      if (kDebugMode) {
        if (e.response != null) {
          response = e.response;

          var message = '''
          Url: ${Url.apiUrl}$url
          Status code: ${response?.statusCode}
          Headers: ${response?.requestOptions.headers}
          Response: ${response?.data}
          ''';
          print('Dio error!');
          log(message);
        } else {
          // Error due to setting up or sending the request
          print('Error sending request!');
          print(e.message);
        }
      }
    }
    return response?.data;
  }
}
