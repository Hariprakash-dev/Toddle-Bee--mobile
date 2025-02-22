import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Service/api_service.dart';
import 'package:get/get.dart';
import 'package:toddle_bee_app/constants/keys.dart';

class AuthProvider with ChangeNotifier {
  String accessToken = '';
  Map userData = {};
  bool loadingAuth = false;

  authLoading() {
    loadingAuth = true;
    notifyListeners();
  }

  authLoadingOff() {
    loadingAuth = false;
    notifyListeners();
  }

  Future logincheck(BuildContext context, String Username) async {
    ApiService().get(context);
  }
   
}
var provdAuth =
    Provider.of<AuthProvider>(materialKey.currentContext!, listen: false);
 
