import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
      imageUrl: 'lib/images/pg1.png',
      title: 'Find the Food You Love',
      description:
          'Discover the best foods from 1,000 restaurants and fast delivery to your doorstep'),
  Slide(
      imageUrl: 'lib/images/pg2.png',
      title: 'Fast Delivery',
      description: 'Fast food delivery to your home, office wherever you are'),
  Slide(
      imageUrl: 'lib/images/pg3.png',
      title: 'Live Tracking',
      description:
          'Real time tracking of your food on the app once you placed the order'),
];
