import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/planet_thumbnail_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/components/app_bar.dart';
import 'package:sunmaster/pages/company_pages/spacex_main_page.dart';

class SpaceShuttleMainPage extends StatefulWidget {
  @override
  _SpaceShuttleMainPageState createState() => _SpaceShuttleMainPageState();
}

class _SpaceShuttleMainPageState extends State<SpaceShuttleMainPage> {
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
                            planetImagePath: kSpaceXLogoImagePath,
                            planetName: "SpaceX",
                            planetDescription: kSpaceXThumbnailDescription,
                            planetShadowColor: Colors.white38,
                            typeOfData: "company",
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SpaceXMainPage(),
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
                            planetImagePath: kNasaLogoImagePath,
                            planetName: "NASA",
                            planetDescription: kNASAThumbnailDescription,
                            planetShadowColor: Colors.blueAccent,
                            typeOfData: "agency",
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
                            planetImagePath: kJAXALogoImagePath,
                            planetName: "JAXA",
                            planetDescription: kJAXAThumbnailDescription,
                            planetShadowColor: Colors.white38,
                            typeOfData: "agency",
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
                            planetImagePath: kBlueOriginLogoImagePath,
                            planetName: "Blue Origin",
                            planetDescription: kBlueOriginThumbnailDescription,
                            planetShadowColor: Colors.white38,
                            typeOfData: "company",
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
