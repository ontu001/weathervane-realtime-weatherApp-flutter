import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathervane/screen/home.dart';
import 'package:weathervane/screen/splash.dart';

void main()=>runApp(Weathervane());
class Weathervane extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weathervane',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(

      ).copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),

      home: Home(),
    );
  }

}