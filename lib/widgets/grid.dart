import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisExtent: 5,
          childAspectRatio: 5,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {},
            child: Text("1"),
          );
        },
      ),
    );
  }
}
