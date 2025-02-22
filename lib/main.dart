import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Provider/favorite_provider.dart';
import 'package:toddle_bee_app/Provider/favoriteshow_provider.dart';
import 'package:toddle_bee_app/Provider/provider.dart';
import 'package:toddle_bee_app/Screens/splash_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => UserDataProvider(),
      ),
       ChangeNotifierProvider(
        create: (context) => FavoriteProvider(),
      ),

      ChangeNotifierProvider(create: (context)=> FavoriteshowProvider())
      // ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      title: "Toddle Bee",
    );
  }
}
