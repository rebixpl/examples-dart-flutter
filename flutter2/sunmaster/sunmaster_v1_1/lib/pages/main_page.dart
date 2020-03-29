import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/planet_thumbnail_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/components/app_bar.dart';
import 'package:sunmaster/pages/sun_main_page.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
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
                            planetShadowColor: Colors.yellowAccent,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SunMainScreen(),
                                ),
                              );
                            },
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
                            planetImagePath: kMarsImagePath,
                            planetName: "Mars",
                            planetDescription: kMarsDescription,
                            planetShadowColor: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Each container contains 2x widgets of planet card
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
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
                            planetShadowColor: Colors.yellowAccent,
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
                            planetShadowColor: Colors.yellowAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Each container contains 2x widgets of planet card
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
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
                            planetShadowColor: Colors.yellowAccent,
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
                            planetShadowColor: Colors.yellowAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Each container contains 2x widgets of planet card
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
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
                            planetShadowColor: Colors.yellowAccent,
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
                            planetShadowColor: Colors.yellowAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // Each container contains 2x widgets of planet card
          ],
        ),
      ),
      bottomNavigationBar: myOwnBottomNavigationBar,
    );
  }
}
