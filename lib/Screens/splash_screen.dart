import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const LoginScreen())) );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Image.asset(
          "assets/splash.png",
          height: 140,
          width: 205,
        ),
      ),
    );
  }
}
