import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text("RESET"),
      style: ElevatedButton.styleFrom(
        primary: Colors.black.withOpacity(0.5),
      ),
    );
  }
}
