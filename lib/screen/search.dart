import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';
import 'package:weathervane/widget/input_files.dart';

import 'home.dart';

class Search extends StatefulWidget{
  const Search({super.key});

  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search>{
  String cityName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                  Navigator.pop(context);
                  }, icon:  Icon(Icons.arrow_back_ios,color: kCommonColor,)),
                   SizedBox(width: 20,),
                   Text('Your Desire City',style: kh1TextStyle,),
                ],
              ),


              Padding(padding: EdgeInsets.symmetric(vertical: 20),child: inputFiled(
onChanged: (value){
  cityName = value;
},
              )),
              SizedBox(
                height: 60,
                width: 200,
                child: ElevatedButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kCommonColor)
                ),onPressed: (){
                  Navigator.pop(context, cityName);
                }, child: Text('Search',style: TextStyle(color: Colors.blueGrey.shade900),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}