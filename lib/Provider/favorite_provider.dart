import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FavoriteProvider with ChangeNotifier {
  bool _isFavorite = false;

  bool get isFavorite => _isFavorite;

  void toggleFavorite(prodId) async {
    print(prodId);
    _isFavorite = !_isFavorite;
    int isfav = _isFavorite ? 1 : 0; // Convert boolean to int for API

    await updateFavoriteStatus(isfav, prodId);
    notifyListeners();
  }

  Future<void> updateFavoriteStatus(int isfav, prodId) async {
    String url = "https://toddlebee.com/api/favorite";
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'isfav': isfav.toString(),
          'id': prodId.toString(),
        },
      );

      if (response.statusCode == 200) {
        print("Favorite status updated: $isfav");
      } else {
        print("Failed to update favorite status: ${response.statusCode}");
      }
    } catch (e) {
      print("Error updating favorite status: $e");
    }
  }

  Future favoriteshow() async {
    String url = "https://toddlebee.com/api/favorite_show";
    try {
      final res = await http.get(Uri.parse(url));
      if (res.statusCode == 200) {
        print(res.body);
        
      }
    } catch (e) {}
  }
}
