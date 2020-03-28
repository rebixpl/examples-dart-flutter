import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';

BottomNavigationBar myOwnBottomNavigationBar = BottomNavigationBar(
  currentIndex: 1,
  items: [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.yellow[500],
      ),
      title: Text(
        "HOME",
        style: kAppBarTextStyle.copyWith(
          fontSize: 20.0,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
        color: Colors.yellow[500],
      ),
      title: Text(
        'PROFILE',
        style: kAppBarTextStyle.copyWith(
          fontSize: 20.0,
        ),
      ),
    ),
  ],
);
