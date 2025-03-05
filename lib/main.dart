import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:toddle_bee_app/Provider/all_provider.dart';
import 'package:toddle_bee_app/Screens/splash_screen.dart';
// import 'package:toddle_bee_app/Service/navigationservice.dart';
import 'package:toddle_bee_app/constants/keys.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providersAll,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: materialKey,
      // navigatorKey: NavigationService.instance.navigationKey,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      title: "Toddle Bee",
    );
  }
}
