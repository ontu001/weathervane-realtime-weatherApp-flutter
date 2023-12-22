import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/const.dart';

class inputFiled extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(

      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: kCommonColor
      ),
      child: TextField(
        style: TextStyle(color: Colors.blueGrey.shade900,fontWeight: FontWeight.w500),

        decoration: InputDecoration(
          hintText: 'Search your city....',
          border: InputBorder.none,

          hintStyle: TextStyle(color: Colors.blueGrey.shade900),
          prefixIcon: Icon(Icons.location_on,color: Colors.blueGrey.shade900,),

        ),
      ),
    );
  }

}