import 'package:flutter/material.dart';
import 'package:weathervane/utility/const.dart';

class DetailScreenContainer extends StatelessWidget {
  final String path;
  final String detailValue;
  final String valueName;
  const DetailScreenContainer(
      {super.key,
      required this.detailValue,
      required this.path,
      required this.valueName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10, top: 20, left: 10, right: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black26,
        ),
        child: Column(
          children: [
            Image.asset(
              path,
              height: 60,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              valueName,
              style: kh3TextStyle,
            ),
            Text(detailValue, style: kh3TextStyle),
          ],
        ),
      ),
    );
  }
}
