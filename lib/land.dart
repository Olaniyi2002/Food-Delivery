import 'package:flutter/material.dart';
import 'package:food_delivery/pages/login.dart';

import 'package:food_delivery/widgets/button.dart';

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;
    //final text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepOrange,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("lib/images/mok.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Meal ", style: TextStyle(fontSize: text * 35)),
                    Text(
                      "Monkey ",
                      style: TextStyle(
                          fontSize: text * 35, color: Colors.deepOrange),
                    ),
                  ],
                ),
                Text("Food Delivery"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                    textAlign: TextAlign.center,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Buttons(
                          height: height / 12,
                          width: width / 1.1,
                          text: text*20,
                          texp: "Login",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          }),
                    ),
                    _Buttons(height: height, width: width)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height / 12,
        width: width / 1.1,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.deepOrange),
            borderRadius: BorderRadius.all(Radius.circular(36))),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(36))),
              elevation: 0,
            ),
            onPressed: () {},
            child: Text(
              "Create an Account",
              style: TextStyle(color: Colors.deepOrange),
            )));
  }
}
