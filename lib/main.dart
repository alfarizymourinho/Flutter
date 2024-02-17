import 'package:flutter_paris/blackpink.dart';
import 'package:flutter_paris/gridview/sopo_jarwo.dart';
import 'package:flutter_paris/screens/home_screen.dart';
import 'package:flutter_paris/screens/login_screen.dart';
import 'package:flutter_paris/screens/tour_screen.dart';
import 'package:flutter_paris/screens/wisata_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      home: CheckAuth(),
    );
  }
}

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      if (mounted) {
        setState(() {
          isAuth = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = BottomNavigationMenu();
    } else {
      child = LoginScreen();
    }

    return Scaffold(
      body: child,
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
    blackpink(),
    SopoJarwo(),
    Tour(),
    ListWisataScreen(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "BlackPink"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "SopoJarwo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: "Beli Tiket"),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: "Daftar Fauna"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.account_box), label: "Profil"),
        ],
      ),
    );
  }
}
