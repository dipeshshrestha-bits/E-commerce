import 'package:e_commerce_app/screens/dummy_screen.dart';
import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/screens/profile_screen.dart';
import 'package:e_commerce_app/screens/search_screen.dart';

import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex =0;

List<Widget> _pages =[
  HomeScreen(),
  SearchScreen(),
  // ShopScreen(),
  DummyScreen(),
  ProfileScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex=value;
          });
        },
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black45,size: 28,),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black45,size: 28),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.shop,color: Colors.black45,size: 28),label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black45,size: 28),label: "Profile"),


      ]),
    );
  }
}