import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'notified.dart';
import 'payment.dart';

String nott;

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double text = MediaQuery.of(context).textScaleFactor;
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("More",
                      style: TextStyle(
                          fontSize: text * 25, fontWeight: FontWeight.w400)),
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.shopping_cart,
                        size: 30,
                      ))
                ]),
          ),
          Container(
            height: height / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Contain(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Payment()),
                    );
                  },
                  texp: "Payement Details",
                  icon: FontAwesome.money,
                ),
                Contain(
                  onTap: () {},
                  texp: "My Orders",
                  icon: Icons.shopping_bag,
                ),
                Stack(
                  children: [
                    Contain(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Notified()),
                        );
                      },
                      texp: "notification",
                      icon: Icons.notifications,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 250),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 12),
                          child: Text(
                            "30",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Contain(
                  onTap: () {},
                  texp: "Inbox",
                  icon: Icons.mail,
                ),
                Contain(onTap: () {}, texp: "About us", icon: FontAwesome.info)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class Contain extends StatelessWidget {
  final String texp;
  final icon, onTap;

  Contain({this.icon, this.onTap, this.texp});
  @override
  Widget build(BuildContext context) {
    //double text = MediaQuery.of(context).textScaleFactor;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height / 10,
          width: width / 1.5,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: height / 10,
                  width: width / 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  child: Icon(icon),
                ),
              ),
              Row(
                children: [
                  Text(texp),
                ],
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 270.0, top: 20),
            child: GestureDetector(
              onTap: onTap,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Container(
                      height: height / 20,
                      width: width / 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
