import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'list.dart';
class Modem extends StatelessWidget {
  final int index;
  Modem(this.index);
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double  width= MediaQuery.of(context).size.width;
    double text=MediaQuery.of(context).textScaleFactor;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Container(
              height: height/3,
              width:width,
              child: Image.asset(offers[index].image,fit: BoxFit.fitWidth,)),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10.0),
          child: Container(
            height:height/17.8,
            width: width,
            child: Column(
              //mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(offers[index].name,style:TextStyle( fontSize: text*17, fontWeight: FontWeight.w500)),
                ratingBar(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
RatingBar ratingBar(){
  return RatingBar.builder(
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemSize: 15,
    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
    itemBuilder: (context, _) => Icon(
      Icons.star,
      color: Colors.amber,
      size: 1,
    ),
    onRatingUpdate: (rating) {
      print(rating);
    },
  );
}