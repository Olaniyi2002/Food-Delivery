import 'package:flutter/material.dart';

class Vertical {
  final String image;
  final String text;

  Vertical({
    @required this.image,
    @required this.text,
  });
}

final verticalList = [
  Vertical(image: "lib/images/Minute.png", text: " Minute by tuk tuk"),
  Vertical(image: "lib/images/cafe.png", text: "Café de Noir"),
  Vertical(image: "lib/images/bakes.png", text: "Bakes by Tella"),
];
