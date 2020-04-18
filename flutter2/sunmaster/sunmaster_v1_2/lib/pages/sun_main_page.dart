import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/components/planet_page_section_title.dart';
import 'package:sunmaster/components/planet_page_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/data/database.dart';

class SunMainScreen extends StatefulWidget {
  @override
  _SunMainScreenState createState() => _SunMainScreenState();
}

class _SunMainScreenState extends State<SunMainScreen> {
  final String planetName = "Sun";
  final double comprasionContainerHeight = 250;

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
                      imagePath: kSunCloseImagePath,
                      imageHeight: 200.0,
                      cardText: kSunMainPageShortDescription,
                    ),
                  ),// one top card container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Origin",
                      imagePath: kSunFromEarth1ImagePath,
                      imageHeight: 200.0,
                      cardText: kSunMainPageOriginDescription,
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
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          PlanetCard(
                            planetCardTitle: "The Sun has no moons",
                            cardText: "",
                          ),
                        ],
                      ),
                    ), // This is one moon widget
                  ],
                ),
              ),
            ),
            PlanetPageSectionTitle(
              title: "Sun/Earth Comparison",
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          PlanetCard(
                            planetCardTitle: "Mass (10\u00B2\u2074 kg)",
                            cardText: "Sun: 1,988,500 \n Earth: 5.9724 \n Ratio (Sun/Earth): 333,000",
                          ),
                        ],
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
                              planetCardTitle: "GM (x 10\u2076 km\u00B3/s\u00B2)",
                              cardText: "Sun: 132,712 \n Earth: 0.39860 \n Ratio (Sun/Earth): 333,000",
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
                              planetCardTitle: "Volume (10\u00B9\u00B2 km\u00B3)",
                              cardText: "Sun: 1,412,000 \n Earth: 1.083 \n Ratio (Sun/Earth): 1,304,000 \n\n Yeah, it would take 1.3 million Earths to fill up the Sun. That's a lot of Earths. The Sun makes up 99.86% of the mass of the Solar System.",
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
                              planetCardTitle: "Escape velocity (km/s)",
                              cardText: "Sun: 617.6 \n Earth: 11.19 \n Ratio (Sun/Earth): 55.2",
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
                              planetCardTitle: "Surface gravity (eq.) (m/s\u00B2)",
                              cardText: "Sun: 274.0 \n Earth: 9.78 \n Ratio (Sun/Earth): 28.0",
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
                              planetCardTitle: "Mean density (kg/m\u00B3)",
                              cardText: "Sun: 1408 \n Earth: 5514 \n Ratio (Sun/Earth): 0.255",
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
                planetCardTitle: "Painting of Sun",
                imagePath: kSunCloseImagePath,
                imageHeight: 400.0,
                cardText: "",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Sun seen from Earth",
                imagePath: kSunFromEarth2BigImagePath,
                imageHeight: 350.0,
                cardText: "",
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyOwnBottomNavigatorBar(),
    );
  }
}
