import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/components/planet_page_section_title.dart';
import 'package:sunmaster/components/planet_page_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/photo_widget.dart';

class Falcon9v1_0_Screen extends StatefulWidget {
  @override
  _Falcon9v1_0_ScreenState createState() => _Falcon9v1_0_ScreenState();
}

class _Falcon9v1_0_ScreenState extends State<Falcon9v1_0_Screen> {
  final String companyName = "Falcon 9 v1.0";
  final double comprasionContainerHeight = 250;
  final double descriptionimageHeight = 200.0;

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
                      "$companyName",
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
                      imagePath: kSpaceXFalcon9v1_0_LiftoffImagePath,
                      imageHeight: descriptionimageHeight,
                      cardText: kSpaceXFalcon9v1_0_Description,
                    ),
                  ), // one top card container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Design",
                      imagePath: kSpaceXMerlinEngineImagePagth,
                      imageHeight: descriptionimageHeight,
                      cardText: kSpaceXDesignFalcon9v1_0_Description,
                    ),
                  ), // one top card container
                ],
              ),
            ),
            PlanetPageSectionTitle(
              title: "Details",
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
                              planetCardTitle: "Basic info:",
                              cardText:
                                  "Function: Orbital medium-lift launch vehicle \n\n Manufacturer: SpaceX \n\n Country of origin: United States \n\n Project cost: US\$300 million (including Dragon) \n\n Cost per launch: US\$54-59.5 million",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Size:",
                              cardText:
                              "Height:  47.8 m (157 ft) \n\n Diameter: 3.66 m (12.0 ft) \n\n Mass: 333,400 kg (735,000 lb) \n\n Stages: 2",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Capacity:",
                              cardText:
                              "Payload to LEO:  10,450 kg (23,040 lb) \n\n Payload to GTO: 4,540 kg (10,010 lb)",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Launch history:",
                              cardText:
                              "Status: Retired \n\n Launch sites: Cape Canaveral SLC-40 \n\n Total launches: 5 \n\n Successes: 4 \n\n First Flight: June 4, 2010 \n\n Last Flight: March 1, 2013 \n\n Notable payloads: Dragon",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "First stage:",
                              cardText:
                              "Engines: 9 Merlin 1C \n\n Thrust: 4,940 kN (1,110,000 lbf) \n\n Specific impulse: \n Sea level: 275 s (2.70 km/s) \n Vacuum: 304 s (2.98 km/s) \n\n Burn time: 170s \n\n Fuel: LOX / RP-1",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: comprasionContainerHeight,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            PlanetCard(
                              planetCardTitle: "Second stage:",
                              cardText:
                              "Engines: 1 Merlin 1C vacuum \n\n Thrust: 445 kN (100,000 lbf) \n\n Specific impulse: 342 s (3.35 km/s) \n\n Burn time: 345s \n\n Fuel: LOX / RP-1",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PlanetPageSectionTitle(
              title: "Photos",
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    PhotoWidgetCard(
                      imagePath: kSpaceXFalcon9v1_0_LiftoffImagePath,
                      imageName:
                          "Falcon 9 rocket lifts off carrying a Dragon capsule filled with cargo.",
                      attributeAuthor: "By Tony Gray and Robert Murray",
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 2,
                      child: PhotoWidgetCard(
                        imagePath: kSpaceXFalconRocketsComparison,
                        imageName: "Falcon Rocket Family",
                        imageHeight: 400.0,
                        attributeAuthor:
                            "By Lucabon (based on work of Markus Säynevirta and Craigboy and Rressi ) - Own work, CC BY-SA 4.0",
                      ),
                    ),
                    PhotoWidgetCard(
                      imagePath: kSpaceLaunchComplex40CapeCanaveralAirForceStation,
                      imageName:
                      "Space Launch Complex 40 at Cape Canaveral Air Force Station",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyOwnBottomNavigatorBar(),
    );
  }
}
