import 'dart:ui';

import 'package:flutter/material.dart';

import '../searchbar.dart';
import 'list.dart';
import 'model.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          height: height / 1.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Menu",
                      style: TextStyle(fontSize: 20),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.shopping_cart,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Search(
                obscured: false,
                hintpext: "Search",
                icon: Icon(Icons.search),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: height / 1.5,
                          width: width / 5,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: menuList.length,
                          itemBuilder: (context, index) => Model(index))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
