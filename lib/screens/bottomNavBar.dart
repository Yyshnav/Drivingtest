import 'dart:ui';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:driving_test_automation/home.dart';
import 'package:driving_test_automation/nearby.dart';
import 'package:driving_test_automation/screens/homescreen.dart';
import 'package:driving_test_automation/userprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bottom extends StatelessWidget {
  Bottom({Key? key});

  final _pageController = PageController(initialPage: 0);
  final _controller = NotchBottomBarController(index: 0);
  int maxCount = 5;

  final List<Widget> pages = [
    HomeScreen(),
    Myprofile(),
    NearBy(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: List.generate(pages.length, (index) => pages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: 
      (pages.length <= maxCount)?
      AnimatedNotchBottomBar(
        notchBottomBarController:_controller,
        color: Color.fromARGB(255, 9, 182, 235),
        itemLabelStyle: TextStyle(color: Colors.white),
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.home,
              color: Colors.blueAccent,
            ),
            itemLabel: ' Home',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.person_2_sharp,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.person_2_sharp,
              color: Colors.blueAccent,
            ),
            itemLabel: ' Profile',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.location_on,
              color: Colors.blueAccent,
            ),
            itemLabel: '  NearBy',
          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.help,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.help,
              color: Colors.blueAccent,
            ),
            itemLabel: ' Help',
          ),
        ],
        onTap: (int value) {
          print(value);
          _pageController.jumpToPage(value);
        },
        kIconSize: 26,
        kBottomRadius: 10,
      ): null
    );
  }
}
