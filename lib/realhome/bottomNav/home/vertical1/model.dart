import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'listtwo.dart';

class Model extends StatelessWidget {
  final int index;
  Model(this.index);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(verticalList[index].image),
        Container(
          height: height / 10,
          child: Column(
            children: [
              Container(
                height: height / 18,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        verticalList[index].text,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: buildRatingBar()),
            ],
          ),
        )
      ],
    );
  }

  RatingBar buildRatingBar() {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20,
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
}
