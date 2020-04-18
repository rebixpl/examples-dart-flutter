import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/components/planet_page_section_title.dart';
import 'package:sunmaster/components/planet_page_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/data/database.dart';

class EarthMainScreen extends StatefulWidget {
  @override
  _EarthMainScreenState createState() => _EarthMainScreenState();
}

class _EarthMainScreenState extends State<EarthMainScreen> {
  final String planetName = "Earth";
  final double comprasionContainerHeight = 250;
  final double moonsImageHeight = 200.0;
  final double descriptionimageHeight = 300.0;

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
                      imagePath: kEarthCloseImagePath,
                      imageHeight: descriptionimageHeight,
                      cardText: kEarthMainPageShortDescription,
                    ),
                  ),// one top card container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Appearance",
                      imagePath: kEarthMountEverestImagePath,
                      imageHeight: descriptionimageHeight,
                      cardText: kEarthMainPageAppearanceDescription,
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
                        planetCardTitle: "The Moon",
                        imagePath: kEarthMoonRotatingGifImagePath,
                        imageHeight: moonsImageHeight,
                        cardText: "",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PlanetPageSectionTitle(
              title: "Earth characteristics",
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
                              planetCardTitle: "Orbital period",
                              cardText: "365.256363004 days (1.00001742096 years)",
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
                      planetCardTitle: "Average orbital speed",
                      cardText: "29.78 km/s \n\n 107200 km/h \n\n 66600 mph",
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
                              planetCardTitle: "Circumference",
                              cardText: "40075.017 km equatorial (24901.461 mi) \n\n 40007.86 km meridional (24859.73 mi)",
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
                              planetCardTitle: "Mass",
                              cardText: "5.97237×10\u00B2\u2074 kg \n\n (1.31668×10\u00B2\u2075 lb)",
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
                              planetCardTitle: "Surface gravity",
                              cardText: "9.80665 m/s\u00B2",
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
                planetCardTitle: "The Blue Marble",
                imagePath: kEarthCloseImagePath,
                imageHeight: 400.0,
                cardText: "",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Mount Everest",
                imagePath: kEarthMountEverestImagePath,
                imageHeight: 350.0,
                cardText: kEarthMountEverestDescription,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Hoodoos at the Bryce Canyon National Park, Utah",
                imagePath: kEarthHoodoosImagePath,
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