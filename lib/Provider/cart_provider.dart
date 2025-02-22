// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// import 'package:toddle_bee_app/repo/api_service.dart';

// class CartProvider extends ChangeNotifier {
//   bool cartLoading = false;
//   bool updateLoading = false;
//   bool isCartGo = false;
//   int totalPrice = 0;

//   List cartList = [];

//   void loadingOn() {
//     cartLoading = true;
//     notifyListeners();
//   }

//   void loadingOff() {
//     cartLoading = false;
//     notifyListeners();
//   }

//   void updateloadingOn() {
//     updateLoading = true;
//     notifyListeners();
//   }

//   void updateloadingOff() {
//     updateLoading = false;
//     notifyListeners();
//   }

//   bool sizeLoading = false;
//   void sizeLoadingOn() {
//     sizeLoading = true;
//     notifyListeners();
//   }

//   void sizeLoadingOff() {
//     sizeLoading = false;
//     notifyListeners();
//   }

//   void addCart(Map<String, dynamic> cart) async {
//     updateloadingOn();
//     ApiService().get(Get.context!, "add_cart", params: cart).then((value) {
//       updateloadingOff();
//       if (value["status"]) {
//         notif("Success", value["message"]);
//         getCart();
//       } else {
//         // notif("Failed", value["message"]);
//       }
//     });
//   }

//   void getCart() {
//     loadingOn();
//     ApiService().get(Get.context!, "get_cart").then((value) {
//       loadingOff();
//       // logger.e(value);
//       if (value["status"]) {
//         cartList = value["data"];
//         totalPrice = value["price"]['price'];
//         notifyListeners();
//       } else {
//         cartList = [];
//         totalPrice = 0;
//         notifyListeners();
//       }
//     });
//   }

//   void goCart(params) {
//     sizeLoadingOn();
//     ApiService().get(Get.context!, "go_cart", params: params).then((value) {
//       sizeLoadingOff();
//       // logger.i(value);
//       // logger.v(params);
//       if (value["status"]) {
//         // successMessage(value["status"]);
//         isCartGo = value['incart'];
//         notifyListeners();
//       } else {
//         // failMessage(value["status"]);
//         notifyListeners();
//       }
//     });
//   }

//   void clearCart() {
//     cartList.clear();
//     totalPrice = 0;
//     notifyListeners();
//   }

//   updateLocalItems(params) async {
//     // toggleIsUndoed(false);
//     int index =
//         cartList.indexWhere((element) => element['id'] == params['cart_id']);
//     if (params['quantity'] == null || params['quantity'] == 0) {
//       // commonDialog(Get.context!, RemoveDialogScreen(index: index));
//       // notifyListeners();
//     } else {
//       cartList[index]['qty'] = params['quantity'];
//       notifyListeners();
//     }
//     // totalPrice =cartList['price'] ;
//     int price = 0;
//     for (var cart in cartList) {
//       price = cart['price'] * cart['qty'] + price;
//     }
//     totalPrice = price;
//     notifyListeners();
//   }

//   void removeOrDeletedItems(params) async {
//     loadingOn();
//     FocusScope.of(Get.context!).unfocus();
//     updateLocalItems(params);
//     return ApiService()
//         .get(Get.context!, "removeOrUpdateItem", params: params)
//         .then((value) {
//       loadingOff();
//       if (value["status"]) {
//         // notif("Success", value["message"]);
//       } else {
//         // notif("Failed", value["message"]);
//       }
//     });
//   }

//   // List<Map> _cart = [];

//   // List<Map> get cart => _cart;

//   // void addCart(Map myCart) {
//   //   _cart.add(myCart);
//   //   LocalStorage.setString("cart", jsonEncode(_cart));
//   //   notifyListeners();
//   // }

//   // void removeCart(Map myCart) {
//   //   if (_cart.any((element) => element['id'] == myCart['id'])) {
//   //     _cart.removeWhere((element) => element['id'] == myCart['id']);
//   //   }
//   //   notifyListeners();
//   // }

//   // loadFavorites() async {
//   //   String? value = await LocalStorage.getString("favorites");
//   //   if (value != null) {
//   //     _cart = (jsonDecode(value) as List).cast<Map>();
//   //   } else {
//   //     _cart = [];
//   //   }
//   //   notifyListeners();
//   // }
// }

  
