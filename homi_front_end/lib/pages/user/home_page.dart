import 'package:flutter/material.dart';
import 'package:homi_front_end/pages/user/home_screen.dart';
import 'package:homi_front_end/pages/user/profile_page.dart';
import 'package:homi_front_end/pages/user/renting_page.dart';
import 'package:homi_front_end/pages/user/search_page.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<MyHomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SearchPage(),
    const RentingPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFFFF),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 112, 117, 112),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Rent',
            backgroundColor: Colors.green,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'profile',
          //   backgroundColor: Colors.green,
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 5, 146, 5),
        onTap: _onItemTapped,
      ),
    );
  }
}
