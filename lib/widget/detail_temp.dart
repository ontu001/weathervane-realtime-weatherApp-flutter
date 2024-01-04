import 'package:flutter/cupertino.dart';
import 'package:weathervane/utility/const.dart';

class detailTemp extends StatelessWidget{
  final String tempStatus;
  final int temp_value;

  const detailTemp({super.key, required this.temp_value, required this.tempStatus});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(tempStatus,style: kh3TextStyle,),
          Text('$temp_value°',style: kh3TextStyle,),
        ],
      ),
    );
  }

}