import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final bool obscured;
  final String hintpext;
  final keyboardType;
  final icon;

  Input({this.obscured, this.hintpext, this.keyboardType, this.icon});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Container(
      width: width / 1.1,
      height: height / 12,
      child: Material(
        elevation: 0,
        borderRadius: BorderRadius.all(Radius.circular(36)),
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.only(left: 50, top: 10, right: 30),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: hintpext, prefixIcon: icon),
            style: TextStyle(fontSize: text * 15),
            keyboardType: keyboardType,
            textInputAction: TextInputAction.done,
            obscureText: obscured,
          ),
        ),
      ),
    );
  }
}
