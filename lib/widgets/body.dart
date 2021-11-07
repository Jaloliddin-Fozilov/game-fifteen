import 'package:flutter/material.dart';

import 'time_and_clicks.dart';
import 'button.dart';
import 'grid.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TimeAndClicks(),
              Grid(),
              Button(),
            ],
          ),
        ],
      ),
    );
  }
}
