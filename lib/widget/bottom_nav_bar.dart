import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:weathervane/screen/home.dart';
import 'package:weathervane/screen/search.dart';
import 'package:weathervane/utility/const.dart';

class bottomNavBar extends StatefulWidget{
  const bottomNavBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return bottomNavBarState();
  }

}
class bottomNavBarState extends State<bottomNavBar>{
  int _currentIndex = 0;
  final _pages= [
    const Home(),
    const Search(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: FloatingNavbar(
        iconSize: 12,
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.symmetric(vertical: 10),
        borderRadius: 20.0,
         itemBorderRadius: 20.0,
        selectedItemColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.black26,
        selectedBackgroundColor: kCommonColor,
        currentIndex: _currentIndex,
        onTap: (int value){
          _currentIndex = value;
          setState(() {

          });
        },

      items: [
        FloatingNavbarItem(  icon: Icons.home,  title: 'Home'),
        FloatingNavbarItem(icon: Icons.search, title: 'Search'),

      ],
      ),
extendBody: true,

      body: _pages[_currentIndex],
    );
  }

}