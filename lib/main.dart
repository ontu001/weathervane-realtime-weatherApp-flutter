import 'package:flutter/material.dart';
import 'package:weathervane/screen/get_location_screen.dart';


void main()=>runApp(const Weathervane());
class Weathervane extends StatelessWidget{
  const Weathervane({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weathervane',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(

      ).copyWith(
        scaffoldBackgroundColor: Colors.blueGrey.shade900,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),

      home: GetLocation(),
    );
  }

}