import 'package:flutter/material.dart';

import '../utility/const.dart';

class inputFiled extends StatelessWidget {
  final Function(String) onChanged;
  const inputFiled({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: kCommonColor),
      child: TextField(
        style: TextStyle(
            color: Colors.blueGrey.shade900, fontWeight: FontWeight.w500),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Search your city....',
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.blueGrey.shade900),
          prefixIcon: Icon(
            Icons.location_on,
            color: Colors.blueGrey.shade900,
          ),
        ),
      ),
    );
  }
}
