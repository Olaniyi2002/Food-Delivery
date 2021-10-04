import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/realhome/bottomNav/home/vertical1/listtwo.dart';
import 'package:food_delivery/realhome/bottomNav/home/vertical1/model.dart';
import 'package:food_delivery/realhome/bottomNav/searchbar.dart';
import 'horizonlist1/horizonitems.dart';
import 'horizonlist1/list.dart';
import 'horizontallist2/horizon.dart';
import 'horizontallist2/listthree.dart';
import 'vertical2/vertical.dart';
import 'vertical2/verticalitems.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _location = [
    'Current Location',
    'Surulere',
    'Apapa',
    'Lagos Mainland',
    'Metropolitan Lagos',
    'Ajegunle',
    'Victoria Island',
    "Mary Land"
  ];
  var _currentItemSelected = 'Current Location';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Container(
            height: height * 2.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning Akila!",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("delivery to"),
                  ],
                ),
                Row(
                  children: [
                    DropdownButton<String>(
                      items: _location.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        setState(() {
                          this._currentItemSelected = newValueSelected;
                        });
                      },
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: text * 14,
                          fontWeight: FontWeight.w500),
                      value: _currentItemSelected,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Search(
                    obscured: false,
                    hintpext: 'Search',
                    keyboardType: TextInputType.name,
                    icon: Icon(Icons.search),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: horizontalList.length,
                    itemBuilder: (context, i) => Item(i),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Resturent",
                      style: TextStyle(fontSize: text*21),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "view all",
                        style: TextStyle(
                          fontSize: text*15,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height / 1,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: verticalList.length,
                      itemBuilder: (context, i) => Model(i),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most Popular",
                      style: TextStyle(fontSize: text*21),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "view all",
                          style: TextStyle(
                            fontSize: text*16,
                          ),
                        ))
                  ],
                ),
                Container(
                  height: height / 3,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: horizontalTwo.length,
                      itemBuilder: (ctxt, i) => Horizontwo(i)),
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Items",
                      style: TextStyle(fontSize: text*21),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "view all",
                          style: TextStyle(
                            fontSize: text*16,
                          ),
                        ))
                  ],
                ),
                Container(
                  height: height / 2.5,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: verticalTwo.length,
                      itemBuilder: (context, index) => Verticaltwo(index)),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
