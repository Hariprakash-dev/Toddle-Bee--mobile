import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toddle_bee_app/Service/api_service.dart';

class FavouriteProvider extends ChangeNotifier {
  bool isLoading = false;
  List favoriteData = [];

  void loadingOn() async {
    isLoading = true;
    notifyListeners();
  }

  void loadingOff() async {
    isLoading = false;
    notifyListeners();
  }

  void favoriteAdd(Map<String, dynamic> id) async {
    loadingOn();
    ApiService().get(Get.context!, "favourite", params: id).then((value) {
      // logger.i(value);
      loadingOff();
      if (value["status"]) {
        logger.e(value["status"]);
        favoriteList();
        notifyListeners();
      } else {}
    });
  }

  void favoriteList() async {
    loadingOn();
    ApiService().get(Get.context!, "favouriteshow").then((value) {
      loadingOff();
      logger.i(value);
      if (value["status"]) {
        favoriteData = value["data"];
        logger.i(favoriteData);
        notifyListeners();
      } else {
        favoriteData = [];
        notifyListeners();
      }
    });
  }
}
