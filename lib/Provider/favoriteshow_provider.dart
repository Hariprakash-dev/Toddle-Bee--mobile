
import 'package:flutter/widgets.dart';
import 'package:toddle_bee_app/Model/favoritemodel.dart';
import 'package:toddle_bee_app/repo/api_favorite.dart';

class FavoriteshowProvider with ChangeNotifier {
  Welcome? _favData;
  bool _isLoading = false;
  String _error = '';

  Welcome? get favData => _favData;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> favoritedata() async {
    _isLoading = true;
    notifyListeners();

    try {
      _favData = await ApiFavorite.favoritedata();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = 'Failed to load data: $e';
      _isLoading = false;
      notifyListeners();
    }
  }
}








