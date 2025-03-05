import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toddle_bee_app/Provider/all_provider.dart';
import 'package:toddle_bee_app/Service/api_service.dart';



class FilterProvider extends ChangeNotifier {
  bool isLoading = false;
  bool isSearchLoading = false;
  bool emptyFilter = false;
  List filterData = [];
  List searchList = [];
  void loadingOn() {
    isLoading = true;
    notifyListeners();
  }

  void loadingOff() {
    isLoading = false;
    notifyListeners();
  }

  void loadingSearchOn() {
    isSearchLoading = true;
    notifyListeners();
  }

  void loadingSearchOff() {
    isSearchLoading = false;
    notifyListeners();
  }

  void prodFilter(Map<String, dynamic> data) {
    loadingOn();
    ApiService().get(Get.context!, "filter", params: data).then((value) {
      loadingOff();
      // logger.e(value);
      // logger.e(data);
      if (value["status"]) {
        filterData = value["data"];
        emptyFilter = value["isempty"];
        // logger.e(emptyFilter);
        provdProduct.assignFilterData(filterData);
        if (data["id"] != 0) {
          Navigator.pop(Get.context!);
        }
        notifyListeners();
      } else {
        filterData = [];
        notifyListeners();
      }
    });
  }

  void funSearch({search}) async {
    loadingSearchOn();
    ApiService().get(Get.context!, "search",
        params: {"search": search ?? ""}).then((value) {
      loadingOff();
      if (value["status"]) {
        searchList = value["data"];
        notifyListeners();
      } else {
        searchList = [];
        notifyListeners();
      }
    });
  }

  void clearFilter() async {
    filterData.clear();
    provdProduct.allProduct(false);
    notifyListeners();
  }
}
