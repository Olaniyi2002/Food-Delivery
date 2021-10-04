import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_delivery/realhome/more/more.dart';
//import 'package:food_delivery/widgets/button.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                        icon: Icon(Icons.arrow_back_ios), onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>More()));
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
            buildColumn(width, height, text),
          ]),
        ),
      ),
    );
  }

  Column buildColumn(double width, double height, double text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: width / 1.2,
          height: height / 20,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(36))),
              elevation: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  FontAwesome.plus,
                  size: 20,
                ),
                Text(
                  "Add Another Credit/Debit Card",
                  style: TextStyle(color: Colors.white, fontSize: text * 20),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
