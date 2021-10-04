import './splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Meal Monkey',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: Splash());
  }
}
