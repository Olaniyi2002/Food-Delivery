import 'package:flutter/material.dart';

import 'list.dart';

class Model extends StatelessWidget {
  final int index;
  Model(this.index);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: height / 10,
              width: width / 1.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey,
                      offset: Offset(4.0, 0))
                ],
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: menuList[index].text,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                          text: menuList[index].number,
                          style:
                          TextStyle(color: Colors.grey, fontSize: 15))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: height / 10,
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Image.asset(menuList[index].image),
                  )),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                      height:height /15,
                      width: width/15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow( blurRadius: 5,
                              color: Colors.grey,
                              offset: Offset(4.0, 0))]
                      ),
                      child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.deepOrange,)),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
