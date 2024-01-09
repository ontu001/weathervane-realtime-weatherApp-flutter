import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';

class exitDialogue extends StatelessWidget {
  final VoidCallback onPressed;
  exitDialogue({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blueGrey.shade900,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 25, top: 18, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Are you sure to exit',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kCommonColor),
                    ),
                    onPressed: onPressed,
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.blueGrey.shade900),
                    )),
                VerticalDivider(),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kCommonColor),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text('No',
                        style: TextStyle(color: Colors.blueGrey.shade900))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
