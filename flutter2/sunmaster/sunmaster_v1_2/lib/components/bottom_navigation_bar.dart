import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:sunmaster/variables.dart';
import 'package:sunmaster/pages/main_page.dart';
import 'package:sunmaster/pages/space_shuttle_main_page.dart';

class MyOwnBottomNavigatorBar extends StatefulWidget {
  @override
  _MyOwnBottomNavigatorBarState createState() =>
      _MyOwnBottomNavigatorBarState();
}

class _MyOwnBottomNavigatorBarState extends State<MyOwnBottomNavigatorBar> {
  void updatePage() {
    switch (bottomBarCurrentIndex) {
      case 0:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ),
          );
        }
        break;
      case 1:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SpaceShuttleMainPage(),
            ),
          );
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      unSelectedColor: Colors.yellow[500],
      selectedColor: Colors.yellow[800],
      backgroundColor: Colors.white,
      scaleFactor: 0.5,
      iconSize: 30.0,
      strokeColor: Colors.yellow[500],
      items: [
        CustomNavigationBarItem(
          icon: LineAwesomeIcons.globe,
        ),
        CustomNavigationBarItem(
          icon: LineAwesomeIcons.space_shuttle,
        ),
      ],
      currentIndex: bottomBarCurrentIndex,
      onTap: (index) {
        setState(() {
          bottomBarCurrentIndex = index;
          updatePage();
        });
      },
    );
  }
}
