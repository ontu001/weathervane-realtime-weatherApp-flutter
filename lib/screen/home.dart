import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';
import 'package:weathervane/widget/bottom_container.dart';
import 'package:weathervane/widget/detail_screen_container.dart';
import 'package:weathervane/widget/detail_temp.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
  int feels_like = 14;
  int max_temp = 23;
  int min_temp= 12;
  int humidity = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('New York, USA',style: kh1TextStyle,),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.location_on_outlined,color: kCommonColor,))
        ],
      ),



      body: Padding(
        padding: const EdgeInsets.only(left: 13,right: 13,top: 8,bottom: 85),
        child: Center(
          child: Column(
            children: [
              const Text('Today, 22 December',style: TextStyle(color: kCommonColor),),
          const SizedBox(height: 30,),
              const Text('19°',style: kTempTextStyle,),
              const Text('Clear Sky',style: kh3TextStyle,),


              //details temperature
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      detailTemp(temp_value: feels_like, tempStatus: 'Feels Like'),
                      const VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                      ),

                      detailTemp(temp_value: max_temp, tempStatus: 'Max Temp'),
                      const VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,

                      ),
                      detailTemp(temp_value: min_temp, tempStatus: 'Min Temp'),
                    ],
                  ),
                ),
              ),


              //more info scrren
              Expanded(child: bottomContainer(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ],
          ),
        ),
      ),
    );
  }

}