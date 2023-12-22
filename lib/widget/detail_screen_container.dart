import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';

class DetailScreenContainer extends StatelessWidget{
  final String path;
  final String detailValue;
  final String valueName;
  DetailScreenContainer({required this.detailValue, required this.path, required this.valueName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
margin: EdgeInsets.only(bottom: 10,top: 20,left: 10,right: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black26,
        ),
        child: Column(
          children: [
            Image.asset(path,height: 60,),
            SizedBox(height: 20,),
            
            Text(valueName,style: kh3TextStyle,),
            Text(detailValue,style: kh3TextStyle),
          ],
        ),
      ),

    );
  }

}