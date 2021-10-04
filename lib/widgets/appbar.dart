import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Text(
      "Good Morning Akila!",
    ),
    titleTextStyle: TextStyle(fontSize: 10),
    actions: [
      IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {},
      )
    ],
    elevation: 0,
  );
}
