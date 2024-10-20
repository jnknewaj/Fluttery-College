import 'package:flutter/material.dart';
import 'package:flutter_college/presentation/home/pages/home_page.dart';
import 'package:flutter_college/presentation/profile/pages/profile_page.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[0],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0,
        onTap: (s) {},
      ),
    );
  }
}

final _pages = [const HomePage(), const ProfilePage()];
