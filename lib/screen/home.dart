import 'package:flutter/material.dart';
import 'package:weathervane/screen/search.dart';
import 'package:weathervane/utility/const.dart';
import 'package:weathervane/widget/bottom_container.dart';
import 'package:weathervane/widget/detail_screen_container.dart';
import 'package:weathervane/widget/detail_temp.dart';

class Home extends StatefulWidget{
   final CurrentLoactionWeather;

  const Home({super.key, this.CurrentLoactionWeather});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
  double temperature =0;
  int feels_like = 14;
  int max_temp = 23;
  int min_temp= 12;
  int humidity = 22;

  @override
  void initState() {
    super.initState();
var data = widget.CurrentLoactionWeather;
temperature = data['main']['temp'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text('New York, USA',style: kh1TextStyle,),
        actions: [
          IconButton(onPressed: (){}, icon:  Icon(Icons.location_on_outlined,color: kCommonColor,))
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
               Text('Today, 22 December',style: TextStyle(color: kCommonColor),),
           SizedBox(height: 30,),
               Text('$temperature°',style: kTempTextStyle,),
               Text('Clear Sky',style: kh3TextStyle,),


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
                          detailValue: '$humidity',
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
                          detailValue: '$humidity',
                          path: 'assets/images/visibility.png',
                          valueName: 'Visibility',
                        ),
                        DetailScreenContainer(
                          detailValue: '$humidity',
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