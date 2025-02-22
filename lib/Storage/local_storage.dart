import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  static Future setstring(String key, Object value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(key, value.toString());
  }

  static Future getstring(String key) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.get(key);
  }
}
