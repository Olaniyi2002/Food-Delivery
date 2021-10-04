import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final bool obscured;
  final String hintpext;
  final keyboardType;
  final icon;

  Search({this.obscured, this.hintpext, this.keyboardType, this.icon});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Container(
      width: width / 1.13,
      height: height / 16,
      child: Material(
        elevation: 0,
        borderRadius: BorderRadius.all(Radius.circular(36)),
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintpext,
                  prefixIcon: icon),
              style: TextStyle(fontSize: text * 15),
              keyboardType: keyboardType,
              textInputAction: TextInputAction.done,
              obscureText: obscured,
            ),
          ),
        ),
      ),
    );
  }
}
