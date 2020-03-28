import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/planet_thumbnail_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/components/app_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: SafeArea(
          child: myOwnAppBar,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: PlanetThumbnailCard(
                    planetImagePath: kSunImagePath,
                    planetName: "Sun",
                    planetDescription: kSunDescription,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: PlanetThumbnailCard(
                    planetImagePath: kSunImagePath,
                    planetName: "Sun",
                    planetDescription: kSunDescription,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: myOwnBottomNavigationBar,
    );
  }
}
