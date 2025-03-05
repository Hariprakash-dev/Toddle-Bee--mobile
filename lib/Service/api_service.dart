import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Provider/auth_provider.dart';
import 'package:toddle_bee_app/Service/api_helper.dart';
import 'package:toddle_bee_app/cofig/enums.dart';

Logger logger = Logger();

class ApiService {
  Map<String, String> headers = {};

  Future setHeaders(BuildContext context, String url) async {
    headers.addAll({"appcode": ""});
    headers.addAll({"Accept": "application/json"});
    String? token =
        Provider.of<AuthProvider>(context, listen: false).accessToken;
    headers.addAll({"Authorization": "Bearer $token"});
  }

  Future get(BuildContext context, String url, {params, cusUrl}) async {
    await setHeaders(context, url);

    var response =
        await InterceptedHttp.build(interceptors: [LoggingInterceptor()]).get(
            Uri.parse(cusUrl ?? targetDetail.url + url),
            params: params,
            headers: headers);
    return ApiHelper().helper(response);
  }
}

class LoggingInterceptor extends InterceptorContract {
  @override
  Future<BaseRequest> interceptRequest({
    required BaseRequest request,
  }) async {
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse({
    required BaseResponse response,
  }) async {
    logger.d('----- Response -----');

    logger.d('Code: ${response.statusCode}');
    if (response is Response) {
      logger.d((response).body);
    }
    return response;
  }
}
