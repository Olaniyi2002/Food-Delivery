import 'package:flutter/material.dart';
//import 'package:food_delivery/realhome/bottomNav/home.dart';

import 'package:google_fonts/google_fonts.dart';

import 'dart:async';

import 'land.dart';

//import 'land.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Land())));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double sizeText = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                height: height,
                width: width,
                child: Image.asset("lib/images/Back.png", fit: BoxFit.cover),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset("lib/images/mok.png"),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Meal',
                          style: GoogleFonts.lato(
                            fontSize: sizeText * 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Text(
                          'Monkey',
                          style: GoogleFonts.lato(
                            fontSize: sizeText * 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 100,
                  ),
                  Text(
                    'FOOD DELIEVERY',
                    style: GoogleFonts.lato(
                      fontSize: sizeText * 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
