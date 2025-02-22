import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:toddle_bee_app/cofig/enums.dart';

class ApiService {
  Map<String, String> headers = {};

  Future setHeaders(BuildContext context, String url) async {
    headers.addAll({"appcode": ""});
    headers.addAll({"Accept": "application/json"});
  }

  Future get(BuildContext context, String url, {params, cusUrl}) async {
    await setHeaders(context, url);
    var response =
        await http.get(
            Uri.parse(cusUrl ?? targetDetail.url + url).replace(
              queryParameters: params
            ),
            headers: headers);
    // ignore: use_build_context_synchronously
    // return ApiHelper().helper(response);
  }
}

