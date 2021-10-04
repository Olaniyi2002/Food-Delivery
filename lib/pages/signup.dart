import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/input_field.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.89,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Input(
                      obscured: false,
                      keyboardType: TextInputType.name,
                      hintpext: "Name",
                    ),
                  ),
                  Input(
                    obscured: false,
                    keyboardType: TextInputType.emailAddress,
                    hintpext: "Email",
                  ),
                  Input(
                    obscured: false,
                    keyboardType: TextInputType.number,
                    hintpext: "Number",
                  ),
                  Input(
                    obscured: false,
                    keyboardType: TextInputType.streetAddress,
                    hintpext: "Address",
                  ),
                  Input(
                    obscured: true,
                    keyboardType: TextInputType.visiblePassword,
                    hintpext: "Password",
                  ),
                  Input(
                    obscured: true,
                    keyboardType: TextInputType.visiblePassword,
                    hintpext: "Confirm Password",
                  ),
                  Buttons(
                    height: height / 12,
                    width: width / 1.1,
                    text: text * 20,
                    onPressed: () {},
                    texp: "Signup",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
