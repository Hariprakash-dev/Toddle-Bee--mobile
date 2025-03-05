import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toddle_bee_app/Screens/home_screen.dart';
import 'package:toddle_bee_app/Service/api_service.dart';


class ProductProvider extends ChangeNotifier {
  bool isLoading = false;
  bool isLoadingPopular = false;
  Map selectedProduct = {};

  List product = [];
  List popularProducts = [];
  Map productDetail = {};
  List selectedCatProduct = [];
  Map selectedSize = {};
  int result = 0;
  int count = 1;
  String selectedImage = "";
  List productListImages = [];

  void loadingOn() {
    isLoading = true;
    notifyListeners();
  }

  void loadingOff() {
    isLoading = false;
    notifyListeners();
  }

  void loading(bool value) {
    isLoadingPopular = value;
    notifyListeners();
  }

  void selectedSizeData(data) {
    selectedSize = data;
    // provdCart.goCart(params);
    // clearData();
    // notifyListeners();
  }

  void amount(int data, int count1) {
    result = data;
    count = count1;
    notifyListeners();
  }

  void clearData() {
    result = 0;
    count = 1;
    notifyListeners();
  }

  void setSelectedCatProducts(data) {
    selectedCatProduct = product
        .where((element) => element['category_id'] == data['id'])
        .toList();
    notifyListeners();
  }

  void setSelectedProduct(data) {
    selectedProduct = data ?? {};
  }

  Future allProduct(bool isNav, {id, data}) async {
    Map<String, String> params = {};
    setSelectedProduct(data);
    // logger.e(data);
    params.addAllIf(id != null, {'id': '$id'});
    loadingOn();
    ApiService().get(Get.context!, "product", params: params).then((value) {
      loadingOff();
      if (value["status"]) {
        if (id == null) {
          product = value["data"]["data"];
        } else {
          productDetail = value["data"];
          List images = productDetail["data"]["images"];
          imageUrl = images.map((item) => "${item["images"]}").toList();
          imageUrl.insert(0, "${productDetail["data"]["thumbnail"]}");
          selectedImage = imageUrl[0];
        }
        isNav == true
            ? Navigator.push(Get.context!,
                MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }))
            : null;
        // getImageList(value["data"]["data"]["images"]);
        notifyListeners();
      } else {
        product = [];
        notifyListeners();
      }
    });
  }

  void popularProductsDetail() {
    loading(true);
    ApiService().get(Get.context!, "popularProducts").then((value) {
      loading(false);
      if (value["status"]) {
        popularProducts = value["data"];
        notifyListeners();
      } else {
        popularProducts = [];
        notifyListeners();
      }
    });
  }

  List<String> imageUrl = [];
  void handleChangeImage(int index) {
    String newImg = imageUrl[index];
    imageUrl[index] = selectedImage;
    selectedImage = newImg;
    notifyListeners();
  }

  void assignFilterData(List productFilter) async {
    product = productFilter;
    notifyListeners();
  }
}
