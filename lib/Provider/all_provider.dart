import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:toddle_bee_app/Provider/auth_provider.dart';
import 'package:toddle_bee_app/Provider/favorite_provider.dart';
import 'package:toddle_bee_app/Provider/favoriteshow_provider.dart';
import 'package:toddle_bee_app/Provider/provider.dart';
import 'package:toddle_bee_app/Provider/theme_provider.dart';
import 'package:toddle_bee_app/constants/keys.dart';

List<SingleChildWidget> providersAll = [
  ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
  ChangeNotifierProvider<UserDataProvider>(
      create: (context) => UserDataProvider()),
  ChangeNotifierProvider<FavoriteProvider>(
      create: (context) => FavoriteProvider()),
  ChangeNotifierProvider<FavoriteshowProvider>(
      create: (context) => FavoriteshowProvider()),
  ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider()),
];

var provdAuth =
    Provider.of<AuthProvider>(materialKey.currentContext!, listen: false);

var provdUserData =
    Provider.of<UserDataProvider>(materialKey.currentContext!, listen: false);

var provdFavourite =
    Provider.of<FavoriteProvider>(materialKey.currentContext!, listen: false);

var provdFavouriteShow = Provider.of<FavoriteshowProvider>(
    materialKey.currentContext!,
    listen: false);

var provdTheme =
    Provider.of<ThemeProvider>(materialKey.currentContext!, listen: false);
