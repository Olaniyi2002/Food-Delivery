import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


import 'verticalitems.dart';

class Verticaltwo extends StatelessWidget {
  final int index;
  Verticaltwo(this.index);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(verticalTwo[index].image),
        ),
        Column(
          children: [
            Text(
              verticalTwo[index].name,
              textAlign: TextAlign.left,
            ),
            Container(
              height: height / 30,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 10,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 1,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
