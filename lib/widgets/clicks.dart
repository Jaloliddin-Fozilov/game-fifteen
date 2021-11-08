import 'package:flutter/material.dart';

class TimeAndClicks extends StatelessWidget {
  final double heightDisplay;
  final int allClicks;
  TimeAndClicks(this.heightDisplay, this.allClicks);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 40, right: 20),
      alignment: Alignment.center,
      height: heightDisplay * 0.1,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black.withOpacity(0.5),
      ),
      child: Text(
        "Clicks: $allClicks",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 26,
        ),
      ),
    );
  }
}
