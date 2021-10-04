import 'package:flutter/material.dart';

class Horizontal {
  final String image;
  final String text;

  Horizontal({
    @required this.image,
    @required this.text,
  });
}

final horizontalList = [
  Horizontal(image: "lib/images/offer.png", text: "Offers"),
  Horizontal(image: "lib/images/srilaka.png", text: "Sri Lanka"),
  Horizontal(image: "lib/images/italian.png", text: "Italian"),
  Horizontal(image: "lib/images/indian.png", text: "Indian"),
];
