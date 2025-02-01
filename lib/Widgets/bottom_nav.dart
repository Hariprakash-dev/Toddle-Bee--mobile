import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Colors/colors.dart';
import 'package:toddle_bee_app/Screens/cart_screen.dart';
import 'package:toddle_bee_app/Screens/category_screen.dart';
import 'package:toddle_bee_app/Screens/favorites_screen.dart';
import 'package:toddle_bee_app/Screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentindex =0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const CartScreen(),
    const CategoryScreen(),
    const FavoritesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      
      body: _screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.backgroundColor,
          
          currentIndex: _currentindex,
      selectedItemColor: Colors.amber,
      unselectedItemColor: const Color.fromRGBO(100, 100, 100, 1),
        
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
          items:  const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Category"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favorites"),
          ]),
    );
  }
}
