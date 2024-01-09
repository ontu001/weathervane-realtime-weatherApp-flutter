import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weathervane/screen/get_location_screen.dart';

class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }

}

class SplashState extends State<Splash>{

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> GetLocation()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("assets/icons/logo.png"),
      ),
    );
  }

}