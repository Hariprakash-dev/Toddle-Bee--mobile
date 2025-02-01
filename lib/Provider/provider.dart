import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Model/userdatamodel.dart';
import 'package:toddle_bee_app/repo/api_service.dart';

class UserDataProvider with ChangeNotifier {
  FetchUserData? _userData;
  bool _isLoading = false;
  String _error = '';

  FetchUserData? get userData => _userData;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> fetchUserData() async {
    _isLoading = true;
    notifyListeners();

    try {
      _userData = await ApiService.fetchUserData();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = 'Failed to load data: $e';
      _isLoading = false;
      notifyListeners();
    }
  }
}


























// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Statemanage with ChangeNotifier {
//   String _name = "";

//   String get name => _name;

//   Future<void> fetchdata() async {
//     final url = Uri.parse("https://toddlebee.com/api/cat");
//     final res = await http.get(url);
//     if (res.statusCode == 200) {
//       final detail = jsonDecode(res.body);
//       _name = detail['data'][0]['category_name'];
//       notifyListeners();
//     } else {
//       print("Failed to fetch nearby cities: ${res.statusCode}");
//     }
//   }
// }
