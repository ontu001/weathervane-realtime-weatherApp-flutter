import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';
import 'package:weathervane/widget/bottom_nav_bar.dart';
import 'package:weathervane/widget/input_files.dart';

class Search extends StatefulWidget{
  const Search({super.key});

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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const bottomNavBar()));
                  }, icon: const Icon(Icons.arrow_back_ios,color: kCommonColor,)),
                  const SizedBox(width: 20,),
                  const Text('Your Desire City',style: kh1TextStyle,),
                ],
              ),


             const Padding(padding: EdgeInsets.symmetric(vertical: 20),child: inputFiled()),
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