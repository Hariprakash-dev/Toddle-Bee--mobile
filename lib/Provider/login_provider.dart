// import 'dart:convert';

// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;

// class AuthProvider extends ChangeNotifier {
//   bool _isLoading = false;
//   String? _errorMessage;

//   bool get isLoading => _isLoading;
//   String? get errorMessage => _errorMessage;

//   Future<bool> login(String username, String otp) async {
//     _isLoading = true;
//     _errorMessage = null;
//     notifyListeners();

//     final url = Uri.parse('https://toddlebee.com/api/auth/login');
//     try {
//       final response = await http.post(
//         url,
//         body: jsonEncode({"username": username, "otp": otp}),
//         headers: {"Content-Type": "application/json"},
//       );

//       final data = jsonDecode(response.body);
//       if (response.statusCode == 200 && data["success"] == true) {
//         _isLoading = false;
//         notifyListeners();
//         return true;
//       } else {
//         _errorMessage = data["message"] ?? "Invalid username or OTP";
//         _isLoading = false;
//         notifyListeners();
//         return false;
//       }
//     } catch (error) {
//       _errorMessage = "Something went wrong. Please try again.";
//       _isLoading = false;
//       notifyListeners();
//       return false;
//     }
//   }



//    Future loginCheck(String username) async {
//     authLoadingOn();
//     ApiService().get(Get.context!, "auth/login_check",
//         params: {"username": username}).then((value) {
//       authLoadingOff();
//       logger.e(value);
//       if (value["status"]) {
//         notif("Success", value["message"]);
//         Nav.push(OTPScreen(
//           mobile: username,
//           isLogin: true,
//           email: '',
//           name: '',
//           pass: '',
//         ));
//       } else {
//         notif("Error", value["message"]);
//       }
//     });
//   }

//   Future login(String username, String otp) async {
   

//     ApiService().get(Get.context!, "auth/login", params: {
//       "username": username,
//       "otp": otp,
//     }).then((value) {
      
//       if (value["status"]) {
//         // notif("Success", "Login Successfully");
//         saveData(value["access_token"], value["user"]);
//         Navigator.of(Get.context!).pushAndRemoveUntil(
//             MaterialPageRoute(
//                 builder: (BuildContext context) => const MainScreen()),
//             (route) => false);
//       } else {
//         notif("Error", value['message']);
//       }
//     });
//   }





// }
 