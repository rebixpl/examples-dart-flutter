import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/components/planet_page_section_title.dart';
import 'package:sunmaster/components/planet_page_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/data/database.dart';
import 'package:sunmaster/components/moon_card_without_image.dart';

class JupiterMainScreen extends StatefulWidget {
  @override
  _JupiterMainScreenState createState() => _JupiterMainScreenState();
}

class _JupiterMainScreenState extends State<JupiterMainScreen> {
  final String planetName = "Jupiter";
  final double comprasionContainerHeight = 250;
  final double moonsImageHeight = 200.0;
  final double descriptionWidgetHeight = 1300;

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
                      imagePath: kJupiterCloseImagePath,
                      imageHeight: 200.0,
                      cardText: kJupiterMainPageShortDescription,
                    ),
                  ), // one top card container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Appearance",
                      imagePath: kJupiterCloudsJunoImagePath,
                      imageHeight: 350.0,
                      cardText: kJupiterMainPageApperanceDescription,
                    ),
                  ), // one top card container
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
                        planetCardTitle:
                        "The relative \n masses of the \n Jovian moons.",
                        imagePath: kJupiterRelativeMassesOfSatellitesImagePath,
                        imageHeight: 300.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Metis",
                        imagePath: kJupiterMetisImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Adrastea",
                        imagePath: kJupiterAdrasteaImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Amalthea",
                        imagePath: kJupiterAmaltheaImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Thebe",
                        imagePath: kJupiterThebeImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Io",
                        imagePath: kJupiterIoImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Europa",
                        imagePath: kJupiterEuropaImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Ganymede",
                        imagePath: kJupiterGanymedeImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Callisto",
                        imagePath: kJupiterCallistoImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    MoonCardWithoutImage(moonName: "Themisto"),
                    MoonCardWithoutImage(moonName: "Leda"),
                    MoonCardWithoutImage(moonName: "Himalia"),
                    MoonCardWithoutImage(moonName: "Ersa"),
                    MoonCardWithoutImage(moonName: "Pandia"),
                    MoonCardWithoutImage(moonName: "Lysithea"),
                    MoonCardWithoutImage(moonName: "Elara"),
                    MoonCardWithoutImage(moonName: "Dia"),
                    MoonCardWithoutImage(moonName: "Carpo"),
                    MoonCardWithoutImage(moonName: "S/2003 J 12"),
                    MoonCardWithoutImage(moonName: "Valetudo"),
                    MoonCardWithoutImage(moonName: "Euporie"),
                    MoonCardWithoutImage(moonName: "Eupheme"),
                    MoonCardWithoutImage(moonName: "S/2003 J 18"),
                    MoonCardWithoutImage(moonName: "S/2010 J 2"),
                    MoonCardWithoutImage(moonName: "Thelxinoe"),
                    MoonCardWithoutImage(moonName: "Euanthe"),
                    MoonCardWithoutImage(moonName: "Helike"),
                    MoonCardWithoutImage(moonName: "Orthosie"),
                    MoonCardWithoutImage(moonName: "S/2017 J 7"),
                    MoonCardWithoutImage(moonName: "S/2016 J 1"),
                    MoonCardWithoutImage(moonName: "S/2017 J 3"),
                    MoonCardWithoutImage(moonName: "Iocaste"),
                    MoonCardWithoutImage(moonName: "S/2003 J 16"),
                    MoonCardWithoutImage(moonName: "Praxidike"),
                    MoonCardWithoutImage(moonName: "Harpalyke"),
                    MoonCardWithoutImage(moonName: "Mneme"),
                    MoonCardWithoutImage(moonName: "Hermippe"),
                    MoonCardWithoutImage(moonName: "Thyone"),
                    MoonCardWithoutImage(moonName: "S/2017 J 9"),
                    MoonCardWithoutImage(moonName: "Ananke"),
                    MoonCardWithoutImage(moonName: "Herse"),
                    MoonCardWithoutImage(moonName: "Aitne"),
                    MoonCardWithoutImage(moonName: "S/2017 J 6"),
                    MoonCardWithoutImage(moonName: "S/2011 J 1"),
                    MoonCardWithoutImage(moonName: "Kale"),
                    MoonCardWithoutImage(moonName: "Taygete"),
                    MoonCardWithoutImage(moonName: "S/2003 J 19"),
                    MoonCardWithoutImage(moonName: "Chaldene"),
                    MoonCardWithoutImage(moonName: "Philophrosyne"),
                    MoonCardWithoutImage(moonName: "S/2003 J 10"),
                    MoonCardWithoutImage(moonName: "S/2003 J 23"),
                    MoonCardWithoutImage(moonName: "Erinome"),
                    MoonCardWithoutImage(moonName: "Aoede"),
                    MoonCardWithoutImage(moonName: "Kallichore"),
                    MoonCardWithoutImage(moonName: "S/2017 J 5"),
                    MoonCardWithoutImage(moonName: "S/2017 J 8"),
                    MoonCardWithoutImage(moonName: "Kalyke"),
                    MoonCardWithoutImage(moonName: "Carme"),
                    MoonCardWithoutImage(moonName: "Callirrhoe"),
                    MoonCardWithoutImage(moonName: "Eurydome"),
                    MoonCardWithoutImage(moonName: "S/2017 J 2"),
                    MoonCardWithoutImage(moonName: "Pasithee"),
                    MoonCardWithoutImage(moonName: "S/2010 J 1"),
                    MoonCardWithoutImage(moonName: "Kore"),
                    MoonCardWithoutImage(moonName: "Cyllene"),
                    MoonCardWithoutImage(moonName: "S/2011 J 2"),
                    MoonCardWithoutImage(moonName: "Eukelade"),
                    MoonCardWithoutImage(moonName: "S/2017 J 1"),
                    MoonCardWithoutImage(moonName: "S/2003 J 4"),
                    MoonCardWithoutImage(moonName: "Pasiphae"),
                    MoonCardWithoutImage(moonName: "Hegemone"),
                    MoonCardWithoutImage(moonName: "Arche"),
                    MoonCardWithoutImage(moonName: "Isonoe"),
                    MoonCardWithoutImage(moonName: "S/2003 J 9"),
                    MoonCardWithoutImage(moonName: "Eirene"),
                    MoonCardWithoutImage(moonName: "Sinope"),
                    MoonCardWithoutImage(moonName: "Sponde"),
                    MoonCardWithoutImage(moonName: "Autonoe"),
                    MoonCardWithoutImage(moonName: "Megaclite"),
                    MoonCardWithoutImage(moonName: "S/2003 J 2"),
                  ],
                ),
              ),
            ),
            PlanetPageSectionTitle(
              title: "$planetName characteristics",
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
                              planetCardTitle: "Length of day",
                              cardText: "9h 56m",
                              imagePath: "",
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
                              planetCardTitle: "Orbital period",
                              cardText:
                              "12 years",
                              imagePath: "",
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
                              cardText:
                              "1.8982×10\u00B2\u2077 kg \n\n That's 317.8 times as much mass compared to Earth.",
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
                              planetCardTitle: "Volume",
                              cardText:
                              "1.4313×10\u00B9\u2075 km\u00B3 \n\n You could fit 1321 Earths inside Jupiter.",
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
                              planetCardTitle: "Mean radius",
                              cardText: "69,911 km",
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
                              cardText: "13.07 km/s",
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
                              planetCardTitle: "Surface Gravity",
                              cardText:
                              "24.79 m/s\u00B2 \n 2.528g",
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
                              planetCardTitle: "Escape velocity",
                              cardText: "59.5 km/s",
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
                planetCardTitle: "Jupiter rotating",
                imagePath: kJupiterRotationCloseImagePath,
                imageHeight: 400.0,
                cardText: "",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Jupiter from space",
                imagePath: kJupiterJunoCloseImagePath,
                imageHeight: 400.0,
                cardText: "",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Great Red Spot",
                imagePath: kJupiterGreatRedSpotImagePath,
                imageHeight: 400.0,
                cardText: kJupiterGreatRedSpotDescription,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyOwnBottomNavigatorBar(),
    );
  }
}
