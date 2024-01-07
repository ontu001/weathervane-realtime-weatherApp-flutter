
import 'package:flutter/material.dart';
import 'package:weathervane/Service/weather.dart';
import 'package:weathervane/screen/search.dart';
import 'package:weathervane/utility/const.dart';
import 'package:weathervane/widget/bottom_container.dart';
import 'package:weathervane/widget/detail_screen_container.dart';
import 'package:weathervane/widget/detail_temp.dart';
import 'package:intl/intl.dart';


class Home extends StatefulWidget{
   final CurrentLoactionWeather;

  const Home({super.key, this.CurrentLoactionWeather});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
  int temperature =0;
  int feels_like = 0;
  int max_temp = 0;
  int min_temp= 0;
  int humidity = 0;
  int wind_speed = 0;
  int visibility = 0;
  int pressure = 0;
  String cityName ='error';
  String status ='error';
late  var time;

  @override
  void initState() {
    super.initState();

updateUI(widget.CurrentLoactionWeather);

  }

  void updateUI(dynamic weatherData){
   setState(() {
      cityName = weatherData['name'];
      status = weatherData['weather'][0]['description'];
     double temp = weatherData['main']['temp'];
     temperature =temp.toInt();


     double fl = weatherData['main']['feels_like'];
     feels_like= fl.toInt();

     double mxt = weatherData['main']['temp_max'];
     max_temp = mxt.toInt();

     double mnt = weatherData['main']['temp_min'];
     min_temp =mnt.toInt();

     humidity = weatherData['main']['humidity'];
     visibility = weatherData['visibility'];
     pressure = weatherData['main']['pressure'];

     double wspd= weatherData['wind']['speed'];
     wind_speed =wspd.toInt();

     time = DateTime.now();




   });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text(cityName,style: kh1TextStyle,),
        actions: [
          IconButton(onPressed: () async{
            var WeatherData = await WeatherModel().getLocationWeather();
            updateUI(WeatherData);
          }, icon:  Icon(Icons.location_on_outlined,color: kCommonColor,))
        ],
      ),

      //search icon
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Align to bottom left
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
        },
        child: Icon(Icons.search, color: Colors.blueGrey.shade900, size: 30),
        shape: CircleBorder(),
        elevation: 0.0,
        backgroundColor: kCommonColor,
      ),



      body: Padding(
        padding:  EdgeInsets.only(left: 13,right: 13,top: 8,bottom: 85),
        child: Center(
          child: Column(
            children: [
               Text(DateFormat('EEEE, MMMM d, y').format(time),style: TextStyle(color: kCommonColor),),
           SizedBox(height: 30,),
               Text('$temperature°',style: kTempTextStyle,),
               Text( status,style: kh3TextStyle,),


              //details temperature
              Padding(
                padding:  EdgeInsets.only(top: 20.0,bottom: 30.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      detailTemp(temp_value: feels_like, tempStatus: 'Feels Like'),
                       VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                      ),

                      detailTemp(temp_value: max_temp, tempStatus: 'Max Temp'),
                       VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,

                      ),
                      detailTemp(temp_value: min_temp, tempStatus: 'Min Temp'),
                    ],
                  ),
                ),
              ),


              //more info scrren
              Expanded(
                child: bottomContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DetailScreenContainer(
                          detailValue: '$humidity',
                           path: 'assets/images/humidity.png',
                          valueName: 'Humidity',
                        ),
                        DetailScreenContainer(
                          detailValue: '$wind_speed',
                          path: 'assets/images/wind_speed.png',
                          valueName: 'Wind Speed',
                        ),


                      ],
                    ),


                    //===========
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DetailScreenContainer(
                          detailValue: '$visibility',
                          path: 'assets/images/visibility.png',
                          valueName: 'Visibility',
                        ),
                        DetailScreenContainer(
                          detailValue: '$pressure',
                          path: 'assets/images/pressure.png',
                          valueName: 'Pressure',
                        ),


                      ],
                    ),
                  ],
                ),
                ),
              ),

              //Search button
            ],
          ),
        ),
      ),
    );
  }

}