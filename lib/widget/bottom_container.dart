import 'package:flutter/material.dart';

class bottomContainer extends StatelessWidget {
  final Widget child;
  const bottomContainer({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: const AssetImage(
            "assets/images/bottom_bg.jpg",
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.60),
            BlendMode.darken,
          ),
        ),
        // color: Colors.blueGrey.shade800
      ),
      child: child,
    );
  }
}
