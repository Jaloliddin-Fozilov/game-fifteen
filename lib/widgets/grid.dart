import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final double heightDisplay;
  final Function clicks;
  final List numbers;
  Grid(this.heightDisplay, this.clicks, this.numbers);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: heightDisplay * 0.50,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return numbers[index] != 0
              ? ElevatedButton(
                  onPressed: () {
                    clicks(index);
                  },
                  child: Text(
                    "${numbers[index]}",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black.withOpacity(0.5),
                  ),
                )
              : SizedBox.shrink();
        },
      ),
    );
  }
}
