import 'package:flutter/material.dart';
import 'list.dart';

class Item extends StatelessWidget {
  final int index;
  Item(this.index);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: Container(
              height: height / 9,
              child: Image.asset(horizontalList[index].image)),
        ),
        Text(
          horizontalList[index].text,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
