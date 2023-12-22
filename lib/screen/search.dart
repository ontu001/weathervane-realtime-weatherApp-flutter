import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';
import 'package:weathervane/widget/input_files.dart';

class Search extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<Search>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.topLeft,child: Text('Your Desire City',style: kh1TextStyle,)),


             Padding(padding: EdgeInsets.symmetric(vertical: 20),child: inputFiled()),
              SizedBox(
                height: 60,
                width: 200,
                child: ElevatedButton(style: ButtonStyle(

                  backgroundColor: MaterialStateProperty.all(kCommonColor)
                ),onPressed: (){}, child: Text('Search',style: TextStyle(color: Colors.blueGrey.shade900),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}