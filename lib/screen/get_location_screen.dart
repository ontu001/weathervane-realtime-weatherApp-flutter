import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weathervane/Service/location.dart';
import 'package:weathervane/Service/network.dart';
import 'package:weathervane/screen/home.dart';

//full api key
//https://api.openweathermap.org/data/2.5/weather?lat=23.4018045&lon=89.1380005&appid=94d21ac82a90c89d510c3c9830b53652
class GetLocation extends StatefulWidget{
  const GetLocation({super.key});

  @override
  State<StatefulWidget> createState() {
    return GetLocationState();
  }

}
const apiKey = "94d21ac82a90c89d510c3c9830b53652";

class GetLocationState extends State<GetLocation>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationWeatherData();


  }

  void getLocationWeatherData ()async{
    Location location = Location();
    await location.getLocation();
    String url ="https://api.openweathermap.org/data/2.5/weather?lat=${location.latti}&lon=${location.longi}&appid=$apiKey";
    NetworkHelper networkHelper = NetworkHelper(url);
    var WeatherData = await networkHelper.getData();
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home( CurrentLoactionWeather: WeatherData)));

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SpinKitDoubleBounce(
            size: 80.0,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }

}



