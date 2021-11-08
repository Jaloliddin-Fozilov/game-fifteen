import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double heightDisplay;
  final Function reset;

  Button(this.heightDisplay, this.reset);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightDisplay * 0.1,
      width: heightDisplay * 0.2,
      child: ElevatedButton(
        onPressed: () {
          reset();
        },
        child: Text("RESET"),
        style: ElevatedButton.styleFrom(
          primary: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
