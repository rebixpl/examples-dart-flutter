import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/components/planet_page_section_title.dart';
import 'package:sunmaster/components/planet_page_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/photo_widget.dart';

class Falcon1Screen extends StatefulWidget {
  @override
  _Falcon1ScreenState createState() => _Falcon1ScreenState();
}

class _Falcon1ScreenState extends State<Falcon1Screen> {
  final String companyName = "Falcon 1";
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
                      imagePath: kSpaceXFalcon1Flight4ImagePath,
                      imageHeight: descriptionimageHeight,
                      cardText: kSpaceXFalcon1Description,
                    ),
                  ), // one top card container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Design",
                      imagePath: kSpaceXMerlinEngineImagePagth,
                      imageHeight: descriptionimageHeight,
                      cardText: kSpaceXDesignFalcon1Description,
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
                                  "Function: Orbital launch vehicle \n\n Manufacturer: SpaceX \n\n Country of origin: United States \n\n Project cost: US\$90 million",
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
                                  "Height: 21 m (68 ft) \n\n Diameter: 1.7 m (5.5 ft) \n\n Mass: 28,000 kg (61,000 lb) \n\n Stages: 2",
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
                                  "Payload to LEO: \n Demonstrated: 180 kg (400 lb) \n Proposed: 670 kg (1,480 lb) \n\n Payload to SSO: \n 450 kg (990 lb)",
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
                                  "Status: Retired \n\n Launch sites: Omelek Island \n\n Total launches: 5 \n\n Successes: 2 \n\n Failures: 3 \n\n First flight: 24 March 2006 \n\n Last flight: 	14 July 2009",
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
                              planetCardTitle: "First Stage:",
                              cardText:
                                  "Engines: \n 1 Merlin 1A (first 2 flights) \n 1 Merlin 1C (final 3 flights) \n\n Thrust: 450 kN (102,000 lbf) \n\n Burn time: 169s \n\n Fuel: RP-1/LOX",
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
                              planetCardTitle: "Second Stage:",
                              cardText:
                                  "Engines: \n 1 Kestrel \n\n Thrust: 31 kN (7,000 lbf) \n\n Burn time: 378s \n\n Fuel: RP-1/LOX",
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
                      imagePath: kSpaceXFalcon1Flight4ImagePath,
                      imageName: "Falcon 1",
                      attributeAuthor: "By SpaceX - SpaceX, CC BY-SA 3.0",
                    ),
                    PhotoWidgetCard(
                      imagePath: kSpaceXMerlinEngineImagePagth,
                      imageName: "First-stage view of the Merlin engine.",
                      attributeAuthor:
                          "By Image courtesy of SpaceX - http://www.spacex.com/gallery/falcon_in_warehouse.jpg, CC BY-SA 3.0",
                    ),
                    PhotoWidgetCard(
                      imagePath: kSpaceXKestrelEngineTestFiringImagePagth,
                      imageName: "Kestrel engine test firing.",
                      attributeAuthor:
                          "By Image courtesy of SpaceX - http://www.spacex.com/gallery/engine_new.jpg, CC BY-SA 3.0",
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
