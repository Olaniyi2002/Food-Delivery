import 'package:flutter/material.dart';
import 'package:food_delivery/realhome/bottomNav/offers/list.dart';
import 'package:food_delivery/realhome/bottomNav/offers/model.dart';
import 'package:food_delivery/widgets/button.dart';

class Offers extends StatelessWidget {
  const Offers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Latest Offers", style: TextStyle(fontSize: text * 20)),
                  GestureDetector(
                      onTap: () {}, child: Icon(Icons.shopping_cart))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Find discounts, Offers special",
                    style: TextStyle(fontSize: text * 15),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Buttons(
                    texp: "check Offers",
                    onPressed: () {},
                    text: text * 15,
                    height: height / 20,
                    width: width / 2.5,
                  ))),
            ),
            Container(
              height: height / 1.5,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: offers.length,
                itemBuilder: (context, index) => Modem(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
