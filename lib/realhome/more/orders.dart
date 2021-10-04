import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_delivery/widgets/button.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double text = MediaQuery.of(context).textScaleFactor;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                    Padding(
                      padding: const EdgeInsets.only(left: 9.0),
                      child: Text(
                        "Payment",
                        style: TextStyle(fontSize: text * 25),
                      ),
                    ),
                  ],
                ),
                Icon(FontAwesome.shopping_cart)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text(
                "Customize your payement method",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: text * 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Buttons(
              texp: "Checkout",
              onPressed: () {},
              height: height / 10,
              width: width / 3,
            ),
          ]),
        ),
      ),
    );
  }
}
