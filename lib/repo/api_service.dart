import 'package:http/http.dart' as http;

import 'package:toddle_bee_app/Model/userdatamodel.dart';

class ApiService {
  static Future<FetchUserData> fetchUserData() async {
    String url = "https://toddlebee.com/api/product";

    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      
     
      return fetchUserDataFromJson(res.body);
    } else {
      throw Exception("Failed to load");
    }
  }
  
}



