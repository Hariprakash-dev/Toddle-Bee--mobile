import 'dart:convert';
import 'dart:io';
// ignore: implementation_imports
import 'package:http/src/response.dart';
import 'package:toddle_bee_app/Provider/all_provider.dart';

import 'notification.dart';

class ApiHelper {
  helper(Response response) {
    try {
      final message = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return message;
      }
      if (response.statusCode == 201) {
        return notif('Success', message['message']);
      }
      if (response.statusCode == 202) {
        notif('Success', message['message']);
        return message;
      }
      if (response.statusCode == 400) {
        return notif("Error", message['Data']['Message']);
      }
      if (response.statusCode == 401 || response.statusCode == 403) {
        provdAuth.authLoadingOff();
      }
      if (response.statusCode == 404) {
        return;
      }
    } on SocketException {
      return {'status': false, 'message': 'SocketException'};
    } on HttpException {
      return {'status': false, 'message': 'HttpException'};
    } on FormatException {
      return {'status': false, 'message': 'FormatException'};
    }
  }
}
