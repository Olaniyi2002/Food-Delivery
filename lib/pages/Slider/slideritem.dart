import 'package:flutter/material.dart';

import 'model.dart';

class SliderItem extends StatelessWidget {
  final int index;
  SliderItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(slideList[index].imageUrl),

        Text(
          slideList[index].title,
          style: TextStyle(fontSize: 20, color: Colors.deepOrange[800]),
        ),

        Text(
          slideList[index].description,
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
