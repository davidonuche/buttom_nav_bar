import 'package:buttom_nav_bar/screens/home_screen.dart';
import 'package:buttom_nav_bar/screens/posts_screen.dart';
import 'package:buttom_nav_bar/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _seletedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation View'),
      ),
      body: IndexedStack(
        children: [
          HomeScreen(),
          PostScreen(),
          SettingScreen(),
        ],
        index: _seletedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedIndex,
        onTap: (index) {
          setState(() {
            _seletedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.post_add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.amberAccent,
      ),
    );
  }
}
