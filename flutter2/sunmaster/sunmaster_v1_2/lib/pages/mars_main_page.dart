import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/components/planet_page_section_title.dart';
import 'package:sunmaster/components/planet_page_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/data/database.dart';

class MarsMainScreen extends StatefulWidget {
  @override
  _MarsMainScreenState createState() => _MarsMainScreenState();
}

class _MarsMainScreenState extends State<MarsMainScreen> {
  final String planetName = "Mars";
  final double comprasionContainerHeight = 250;
  final double moonsImageHeight = 200.0;
  final double marsDescriptionWidgetHeight = 910;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: SafeArea(
          child: AppBar(
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
                      "$planetName",
                      style: kAppBarTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kAppBarTextStyle.color,
                ),
                tooltip: "GO BACK",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PlanetPageSectionTitle(
              title: "Description",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Short description",
                      imagePath: kMarsCloseImagePath,
                      imageHeight: 200.0,
                      cardText: kMarsMainPageShortDescription,
                    ),
                  ),// one top card container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Appearance",
                      imagePath: kMarsVallesMarinerisImagePath,
                      imageHeight: 200.0,
                      cardText: kMarsMainPageAppearanceDescription,
                    ),
                  ),// one top card container
                ],
              ),
            ),
            PlanetPageSectionTitle(
              title: "Moons",
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: PlanetCard(
                        planetCardTitle: "Phobos",
                        imagePath: kMarsPhobosImagePath,
                        imageHeight: moonsImageHeight,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle: "Deimos",
                        imagePath: kMarsDeimosImagePath,
                        imageHeight: moonsImageHeight,
                        cardText: "",
                      ),
                    ), // This is one moon widget
                  ],
                ),
              ),
            ),
            PlanetPageSectionTitle(
              title: "Mars/Earth Comparison",
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Distance from Sun (average)",
                              cardText: "Mars: 227,936,637 kilometers (142,633,260 miles) \n\n Earth: 149,597,891 kilometers (92,955,820 miles)",
                            ),
                          ],
                        ),
                      ),
                    ), // This is one moon widget
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Gravity",
                              cardText: "Mars: 0.375 that of Earth \n\n Earth: 2.66 times that of Mars",
                            ),
                          ],
                        ),
                      ),
                    ), // This is one moon widget
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Equatorial Radius",
                              cardText: "Mars: 3,397 kilometers (2,111 miles) \n\n Earth: 6,378 kilometers (3,963 miles)",
                            ),
                          ],
                        ),
                      ),
                    ), // This is one moon widget
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Surface Temperature (average)",
                              cardText: "Mars: -81 degrees F (-63 degrees C) \n\n Earth: 57 degrees F (14 degrees C)",
                            ),
                          ],
                        ),
                      ),
                    ), // This is one moon widget
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Atmosphere (composition)",
                              cardText: kMarsAndEarthAtmosphereComposition,
                            ),
                          ],
                        ),
                      ),
                    ), // This is one moon widget
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Deepest Canyon",
                              cardText: kMarsAndEarthDeepestCanyon,
                            ),
                          ],
                        ),
                      ),
                    ), // This is one moon widget
                  ],
                ),
              ),
            ),
            PlanetPageSectionTitle(
              title: "Photos",
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Close to Mars",
                imagePath: kMarsCloseImagePath,
                imageHeight: 400.0,
                cardText: "",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Valles Marineris",
                imagePath: kMarsVallesMarinerisImagePath,
                imageHeight: 350.0,
                cardText: kMarsVallesMarineris,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyOwnBottomNavigatorBar(),
    );
  }
}