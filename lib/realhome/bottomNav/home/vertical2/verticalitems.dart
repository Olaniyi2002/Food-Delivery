import 'package:flutter/material.dart';

class Verticallist {
  final String image;
  final String name;

  Verticallist({@required this.image, @required this.name});
}

final verticalTwo = [
  Verticallist(image: "lib/images/Pizza.png", name: "MullBerry Pizza by Josh"),
  Verticallist(image: "lib/images/Barita.png", name: "Barita"),
  Verticallist(image: "lib/images/mull.png", name: "Pizza Rush Hour"),
];
