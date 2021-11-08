import 'package:flutter/material.dart';

import 'clicks.dart';
import 'button.dart';
import 'grid.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int allClicks = 0;
  List numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  void initState() {
    super.initState();
    numbers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    double heightDisplay = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        height: heightDisplay,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            TimeAndClicks(heightDisplay, allClicks),
            Grid(heightDisplay, clicks, numbers),
            Button(heightDisplay, reset),
          ],
        ),
      ),
    );
  }

  void clicks(index) {
    if (index - 1 >= 0 && numbers[index - 1] == 0 && index % 4 != 0 ||
        index + 1 < 16 && numbers[index + 1] == 0 && (index + 1) % 4 != 0 ||
        (index - 4 >= 0 && numbers[index - 4] == 0) ||
        (index + 4 < 16 && numbers[index + 4] == 0)) {
      setState(() {
        numbers[numbers.indexOf(0)] = numbers[index];
        numbers[index] = 0;
        allClicks++;
      });
    }
    win();
  }

  void reset() {
    setState(() {
      allClicks = 0;
      numbers.shuffle();
    });
  }

  bool isSorted(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  void win() {
    if (isSorted(numbers)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Clicks: $allClicks'),
            content: Text('You win! Click on "Close" to start again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  reset();
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    }
  }
}
