import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mystical_bolivia/navbar/home.dart';
import 'package:mystical_bolivia/navbar/featured.dart';
import 'package:mystical_bolivia/navbar/search.dart';
import 'package:mystical_bolivia/navbar/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Featured(),
    Search(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: GNav(
        activeColor: Color(0xFFFF725E),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.star,
            text: "Destacados",
          ),
          GButton(icon: Icons.search),
          GButton(
            icon: Icons.person,
            text: "Perfil",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
