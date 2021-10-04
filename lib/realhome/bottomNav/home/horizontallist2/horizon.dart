import 'package:flutter/material.dart';

import 'listthree.dart';

class Horizontwo extends StatelessWidget {
  final int index;
  Horizontwo(this.index);
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(horizontalTwo[index].image),
        ),
        Text(horizontalTwo[index].name)
      ],
    );
  }
}
