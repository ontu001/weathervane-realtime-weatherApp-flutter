import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weathervane/Service/weather.dart';
import 'package:weathervane/screen/home.dart';

//https://api.openweathermap.org/data/2.5/weather?lat=23.4018045&lon=89.1380005&appid=94d21ac82a90c89d510c3c9830b53652
class GetLocation extends StatefulWidget {
  const GetLocation({super.key});

  @override
  State<StatefulWidget> createState() {
    return GetLocationState();
  }
}

class GetLocationState extends State<GetLocation> {
  //for update the state
  @override
  void initState() {
    super.initState();
    getLocationWeatherData();
  }

  //for getting current location wise weather data
  void getLocationWeatherData() async {
    var WeatherData = await WeatherModel().getLocationWeather();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Home(CurrentLoactionWeather: WeatherData)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          //for loading animation
          child: SpinKitDoubleBounce(
            size: 80.0,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
