import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/planet_thumbnail_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/components/app_bar.dart';
import 'package:sunmaster/pages/sun_main_page.dart';
import 'package:sunmaster/pages/mars_main_page.dart';
import 'package:sunmaster/pages/earth_main_page.dart';
import 'package:sunmaster/pages/venus_main_page.dart';
import 'package:sunmaster/pages/mercury_main_page.dart';
import 'package:sunmaster/pages/neptune_main_page.dart';
import 'package:sunmaster/pages/jupiter_main_page.dart';

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
                            planetImagePath: kSunCloseImagePath,
                            planetName: "Sun",
                            planetDescription: kSunDescription,
                            planetShadowColor: Colors.yellow[900],
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
                            planetImagePath: kMarsCloseImagePath,
                            planetName: "Mars",
                            planetDescription: kMarsDescription,
                            planetShadowColor: Colors.redAccent,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MarsMainScreen(),
                                ),
                              );
                            },
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
                            planetImagePath: kEarthCloseImagePath,
                            planetName: "Earth",
                            planetDescription: kEarthDescription,
                            planetShadowColor: Colors.blue[900],
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EarthMainScreen(),
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
                            planetImagePath: kVenusCloseImagePath,
                            planetName: "Venus",
                            planetDescription: kVenusDescription,
                            planetShadowColor: Colors.orange,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VenusMainScreen(),
                                ),
                              );
                            },
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
                            planetImagePath: kMercuryCloseImagePath,
                            planetName: "Mercury",
                            planetDescription: kMercuryDescription,
                            planetShadowColor: Colors.grey,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MercuryMainScreen(),
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
                            planetImagePath: kNeptuneCloseImagePath,
                            planetName: "Neptune",
                            planetDescription: kNeptuneDescription,
                            planetShadowColor: Colors.blueAccent,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NeptuneMainScreen(),
                                ),
                              );
                            },
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
                            planetImagePath: kJupiterCloseImagePath,
                            planetName: "Jupiter",
                            planetDescription: kJupiterDescription,
                            planetShadowColor: Colors.amberAccent,
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => JupiterMainScreen(),
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
                            planetImagePath: kErrorIcon,
                            planetName: "Planet name",
                            planetDescription: "Planet description.................................................................",
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
      bottomNavigationBar: MyOwnBottomNavigatorBar(),
    );
  }
}
