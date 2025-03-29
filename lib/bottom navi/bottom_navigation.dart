import 'package:flutter/material.dart';
import 'package:true_guide/account%20screen/account_screen.dart';
import 'package:true_guide/category/category_screen.dart';
import 'package:true_guide/bottom%20navi/features_screen.dart';
import 'package:true_guide/bottom%20navi/home_screen.dart';
import 'package:true_guide/login/login.dart';


class Bottom_Navigation extends StatefulWidget {
  @override
  _Bottom_NavigationState createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
     Home_screen(),
     Category_Screen(),
     Features_Screen(),
     Account_Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensures all items are shown
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home, color: Colors.purple),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category, color: Colors.purple),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            activeIcon: Icon(Icons.grid_view, color: Colors.purple),
            label: "Features",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle, color: Colors.purple),
            label: "Account",
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true, // To match the design
      ),
    );
  }
}