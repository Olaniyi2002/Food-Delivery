import 'package:flutter/material.dart';
import 'package:food_delivery/pages/signup.dart';
import 'package:food_delivery/widgets/button.dart';
import 'package:food_delivery/widgets/input_field.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'Slider/caoursel.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Add your details to login",
                  style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Container(
                  height: height * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Input(
                        obscured: false,
                        keyboardType: TextInputType.emailAddress,
                        hintpext: "Email",
                      ),
                      Input(
                        obscured: true,
                        keyboardType: TextInputType.visiblePassword,
                        hintpext: "Password",
                      ),
                      Buttons(
                        height: height / 12,
                        width: width / 1.1,
                        text: text*20,
                        texp: "Login",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Caoursel()),
                          );
                        },
                      ),
                      Text(
                        "Forgot your Password ?",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "or Login with",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                      Button(
                          texp: "Login with facebook",
                          onPressed: () {},
                          color: Colors.blue[800],
                          icon: FlutterIcons.facebook_f_faw),
                      Button(
                          texp: "Login with Gmail",
                          onPressed: () {},
                          color: Colors.red[600],
                          icon: FlutterIcons.google_plus_faw),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account ?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Text("Signup",
                          style: TextStyle(color: Colors.deepOrange)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String texp;
  final onPressed;
  final Color color;
  final icon;

  Button({this.texp, this.onPressed, this.color, this.icon});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Container(
      width: width / 1.1,
      height: height / 12,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(36))),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon),
            Text(
              texp,
              style: TextStyle(color: Colors.white, fontSize: text * 15),
            ),
          ],
        ),
      ),
    );
  }
}
