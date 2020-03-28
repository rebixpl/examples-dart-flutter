import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/variables.dart';

AppBar myOwnAppBar = AppBar(
  automaticallyImplyLeading: false, // hides leading widget
  flexibleSpace: Column(
    children: <Widget>[
      SizedBox(
        height: 10.0,
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow[500],
          ),
          Text(
            " Sunmaster",
            style: kAppBarTextStyle.copyWith(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
              color: Colors.yellow[500],
            ),
          )
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Row(
        children: <Widget>[
          Text(
            'Hi, ',
            style: kAppBarTextStyle,
          ),
          Text(
            "${userName}!",
            style: kAppBarTextStyle.copyWith(
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    ],
  ),
);