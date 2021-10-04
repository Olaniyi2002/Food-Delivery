import 'package:flutter/material.dart';

import 'home/home.dart';
import 'menu/menu.dart';
import '../more/more.dart';
import 'offers/offers.dart';
import 'profile/profile.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> pages = [Home(), Menu(), More(), Offers(), Profile()];
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: currentTab == 0 ? Colors.deepOrange : Colors.grey,
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              currentScreen = Home();
              currentTab = 0;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Menu();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.menu,
                              color: currentTab == 1
                                  ? Colors.deepOrange
                                  : Colors.grey),
                          Text("Menu",
                              style: TextStyle(
                                color: currentTab == 1
                                    ? Colors.deepOrange
                                    : Colors.grey,
                              ))
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Offers();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_bag,
                              color: currentTab == 2
                                  ? Colors.deepOrange
                                  : Colors.grey),
                          Text("Offers",
                              style: TextStyle(
                                color: currentTab == 2
                                    ? Colors.deepOrange
                                    : Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,
                              color: currentTab == 3
                                  ? Colors.deepOrange
                                  : Colors.grey),
                          Text("Profile",
                              style: TextStyle(
                                color: currentTab == 3
                                    ? Colors.deepOrange
                                    : Colors.grey,
                              ))
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = More();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.more,
                              color: currentTab == 4
                                  ? Colors.deepOrange
                                  : Colors.grey),
                          Text("More",
                              style: TextStyle(
                                color: currentTab == 4
                                    ? Colors.deepOrange
                                    : Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
