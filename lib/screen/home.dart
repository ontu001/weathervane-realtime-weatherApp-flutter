import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';
import 'package:weathervane/widget/detail_temp.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
  int feels_like = 14;
  int max_temp = 23;
  int min_temp= 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('New York, USA',style: kh1TextStyle,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined,color: kCommonColor,))
        ],
      ),



      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20,top: 8),
        child: Center(
          child: Column(
            children: [
              Text('Today, 22 December',style: TextStyle(color: kCommonColor),),
          SizedBox(height: 40,),
              Text('19°',style: kTempTextStyle,),
              Text('Clear Sky',style: kh3TextStyle,),


              //details temperature
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ],
          ),
        ),
      ),
    );
  }

}