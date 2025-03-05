// import 'package:flutter/material.dart';

// class CartProvider extends ChangeNotifier {
//   bool isLoading = false;
//   List catdata = [];

//   void loadingOn() async {
//     isLoading = true;
//     notifyListeners();
//   }

//   void loadingOff() async {
//     isLoading = false;
//     notifyListeners();
//   }

  // void cart() async {
  //   loadingOn();
  //   ApiService().get(Get.context!, "cat").then(() {
  //     loadingOff();
  //     if (value["status"]) {
  //       logger.e(value["status"]);
  //       catdata = value["data"];

  //       notifyListeners();
  //     } else {
  //       catdata = [];
  //       notifyListeners();
  //     }
  //   });
  // }
//  }
