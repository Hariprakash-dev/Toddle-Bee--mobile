import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Storage/local_storage.dart';
import 'package:toddle_bee_app/Storage/local_storage_constants.dart';
import 'package:toddle_bee_app/constants/keys.dart';



class ThemeProvider with ChangeNotifier {
  ThemeProvider() {
    init();
  }

  // Initial ThemeMode of the app
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  bool get themeSys => _themeMode == ThemeMode.light ? true : false;

  Future<void> init() async {
    _themeMode =
        // ignore: deprecated_member_use
        SchedulerBinding.instance.window.platformBrightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
    // check for theme pref
    final int? themeId = await LocalStorage.getInt(LocalStorageConstants.theme);
    _themeMode = themeId == 1 || themeId == null ? ThemeMode.light : ThemeMode.dark;
    if (_themeMode == ThemeMode.dark) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ));
    }
    notifyListeners();
  }

  void toggleThemeMode() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
      notifyListeners();
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ));
      LocalStorage.setInt(
        LocalStorageConstants.theme,
        LocalStorageConstants.themeDark,
      );
      return;
    }

    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
      notifyListeners();
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ));
      LocalStorage.setInt(
        LocalStorageConstants.theme,
        LocalStorageConstants.themeLight,
      );
      return;
    }
  }
}
var provdTheme =
    Provider.of<ThemeProvider>(materialKey.currentContext!, listen: false);
