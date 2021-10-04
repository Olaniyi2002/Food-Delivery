import 'package:flutter/material.dart';

import 'more.dart';

class Notified extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>More()));
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 9.0),
                  child: Text(
                    "Payment",
                    style: TextStyle(fontSize: text * 25),
                  ),
                ),
              ],
            ),
          ]),
        ]),
      )),
    );
  }
}
