import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String texp;
  final onPressed, icon, space;
  final double width, height, text;
  Buttons(
      {this.space,
      this.texp,
      this.onPressed,
      this.width,
      this.height,
      this.text,
      this.icon});
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    // double text = MediaQuery.of(context).textScaleFactor;

    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(36))),
          elevation: 0,
        ),
        child: Text(
          texp,
          style: TextStyle(color: Colors.white, fontSize: text),
        ),
      ),
    );
  }
}
