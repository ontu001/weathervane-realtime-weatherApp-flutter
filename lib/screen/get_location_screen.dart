import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weathervane/Service/location.dart';

class GetLocation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GetLocationState();
  }

}

class GetLocationState extends State<GetLocation>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlocation();
  }


  void getlocation() async{
    Location location =Location();
    await location.getLocation();
    print(location.longi);
    print(location.latti);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

}