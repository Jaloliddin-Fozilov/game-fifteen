import 'package:flutter/material.dart';

class TimeAndClicks extends StatelessWidget {
  const TimeAndClicks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black.withOpacity(0.5),
      ),
      child: Text(
        "Time: 00:03 | Clicks: 001",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 28,
        ),
      ),
    );
  }
}
