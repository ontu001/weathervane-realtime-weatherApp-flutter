import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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


              //

            ],
          ),
        ),
      ),
    );
  }

}