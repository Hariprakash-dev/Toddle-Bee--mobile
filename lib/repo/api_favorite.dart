import 'package:http/http.dart' as http;
import 'package:toddle_bee_app/Model/favoritemodel.dart';

class ApiFavorite {
  static Future<Welcome> favoritedata() async {
    String url = "https://toddlebee.com/api/favouriteshow";
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      print(res.body);
      return welcomeFromJson(res.body);
    } else {
      throw Exception("Failed to load");
    }
  }
}
