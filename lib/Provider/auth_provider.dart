import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:toddle_bee_app/Screens/login_screen.dart';
import 'package:toddle_bee_app/Screens/otp_screen.dart';
import 'package:toddle_bee_app/Service/api_service.dart';
import 'package:toddle_bee_app/Service/notification.dart';
import 'package:toddle_bee_app/Storage/local_storage_constants.dart';
import 'package:toddle_bee_app/Widgets/bottom_nav.dart';
import 'package:toddle_bee_app/constants/keys.dart';

var logger = Logger(filter: null, printer: PrettyPrinter(), output: null);

class AuthProvider with ChangeNotifier {
  String accessToken = '';
  Map userData = {};
  bool loadingAuth = false;

  authLoadingOn() {
    loadingAuth = true;
    notifyListeners();
  }

  authLoadingOff() {
    loadingAuth = false;
    notifyListeners();
  }

  Future restoreSplash() async {
    String? value =
        await secureStorage.read(key: LocalStorageConstants.accessToken);
    logger.i(value);
    if (value != null && value.isNotEmpty) {
      accessToken = value;
      // logger.wtf(accessToken);
      notifyListeners();
      forwardMainScreen();
      return refresh();
    } else {
       logger.f(accessToken);
      return Get.offUntil(
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    }
  }

  Future refresh() async {
    authLoadingOn();
    ApiService().get(Get.context!, 'auth/refresh').then((value) {
      authLoadingOff();
      if (value['status']) {
         logger.w(accessToken);
        saveData(value['access_token'], value['user']);
      } else {
        clearData();
      }
      return value['status'];
    });
  }

  forwardMainScreen() {
    return Get.offUntil(
        MaterialPageRoute(builder: (context) => const MainScreen()),
        (route) => false);
  }

  void logout() {
    authLoadingOn();
    ApiService().get(materialKey.currentContext!, "auth/logout").then((value) {
      authLoadingOff();
      if (value['status']) {
        notif('Success', value['message']);
        
        clearData();
        Navigator.of(Get.context!).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => const LoginScreen()),
            (route) => false);
      } else {
        notif('error', value['message']);
      }
    });
  }

  Future logincheck(BuildContext context, String username) async {
    logger.i("Username is $username");
    ApiService().get(context, "auth/login_check",
        params: {"username": username}).then((Value) {
      logger.i("Value is $Value");
      authLoadingOff();
      if (Value["status"]) {
        logger.i(Value['status']);
        notif("Success", Value["message"]);

        Future.delayed(Duration(milliseconds: 300), () {
          if (context.mounted) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OTPScreen(
                  mobile: username,
                  isLogin: true,
                  name: '',
                  email: '',
                  pass: '',
                ),
              ),
            );
          }
        });
      } else {
        logger.i(Value["message"]);
        notif("Error", Value["message"]);
      }
    });
  }

  Future login(BuildContext context, String username, String otp) async {
    authLoadingOn();
    FocusScope.of(context).unfocus();

    ApiService().get(context, "auth/login", params: {
      "username": username,
      "otp": otp,
    }).then((value) {
      logger.i("Login is $value");
      authLoadingOff();

      if (value["status"]) {
        notif("Success", "Login Successfully");
        saveData(value["access_token"], value["user"]);
        Future.delayed(Duration(milliseconds: 300), () {
          if (context.mounted) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          }
        });

      
      } else {
        notif("Error", value['message']);
      }
    });
  }

  // Future registerCheck(BuildContext context, String name, String email,
  //     String mobile, String pass, String username) async {
  //   authLoadingOn();
  //   ApiService().get(context, "auth/register_check", params: {
  //     "username": name,
  //     "email": email,
  //     "mobile": mobile,
  //     "password": pass
  //   }).then((response) {
  //     logger.e(response);
  //     authLoadingOff();
  //     if (response["status"]) {
  //       notif("Success", response["message"]);
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => OTPScreen(
  //                   mobile: username,
  //                   isLogin: true,
  //                   name: '',
  //                   email: '',
  //                   pass: '')));
  //     } else {
  //       notif("Failed", response["message"]);
  //     }
  //   });
  // }

  void saveData(String token, Map map) async {
    accessToken = token;
    userData = map;

    await secureStorage.write(
        key: LocalStorageConstants.accessToken, value: token);

    notifyListeners();
  }

  void clearData() async {
    accessToken = "";
    userData = {};
    userData.clear();

    await secureStorage.delete(key: LocalStorageConstants.accessToken);
    await secureStorage.deleteAll();

    notifyListeners();
  }
}
