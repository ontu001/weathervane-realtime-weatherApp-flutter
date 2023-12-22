import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:weathervane/screen/splash.dart';
import 'package:weathervane/widget/bottom_nav_bar.dart';

void main()=>runApp(Weathervane());
class Weathervane extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weathervane',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(

      ).copyWith(
        scaffoldBackgroundColor: Colors.blueGrey.shade900,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),

      home: bottomNavBar(),
    );
  }

}