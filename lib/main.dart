import 'package:flutter/material.dart';
import 'package:game_store/pages/favorite.dart';
import 'package:game_store/pages/home_page.dart';
import 'package:game_store/pages/hot_deals.dart';
import 'package:game_store/pages/profile.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomePage(),
    Favorite(),
    HotDeals(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            backgroundColor: Colors.amber,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            backgroundColor: Colors.pink,
            label: "Favorite",
            activeIcon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fireplace_outlined),
            backgroundColor: Colors.redAccent,
            label: "Hot Deals",
            activeIcon: Icon(Icons.fireplace_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            backgroundColor: Colors.blueGrey,
            label: "Profile",
          ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
