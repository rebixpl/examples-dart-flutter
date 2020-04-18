import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';
import 'package:sunmaster/components/planet_page_section_title.dart';
import 'package:sunmaster/components/planet_page_card.dart';
import 'package:sunmaster/components/bottom_navigation_bar.dart';
import 'package:sunmaster/data/database.dart';

class NeptuneMainScreen extends StatefulWidget {
  @override
  _NeptuneMainScreenState createState() => _NeptuneMainScreenState();
}

class _NeptuneMainScreenState extends State<NeptuneMainScreen> {
  final String planetName = "Neptune";
  final double comprasionContainerHeight = 250;
  final double moonsImageHeight = 200.0;
  final double descriptionWidgetHeight = 870;

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
                      imagePath: kNeptuneCloseImagePath,
                      imageHeight: 200.0,
                      cardText: kNeptuneMainPageShortDescription,
                    ),
                  ), // one top card container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: PlanetCard(
                      planetCardTitle: "Appearance",
                      imagePath: kNeptuneInsideImagePath,
                      imageHeight: 350.0,
                      cardText: kNeptunMainPageAppearanceDescription,
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
                            "The relative \n masses of the \n Neptunian moons.",
                        imagePath: kNeptuneTritonVsOtherMoonsMassComparison,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Triton",
                        imagePath: kNeptuneTritonRotationGifImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Naiad",
                        imagePath: kNeptuneNaiadImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Thalassa",
                        imagePath: '',
                        imageHeight: 0.0,
                        cardText: "There is \n no image.",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Despina",
                        imagePath: kNeptuneDespinaImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Galatea",
                        imagePath: kNeptuneGalateaImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Larissa",
                        imagePath: kNeptuneLarissaImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Hippocamp",
                        imagePath: kNeptuneHippocampImagePath,
                        imageHeight: 200.0,
                        cardText: "Fun fact: Hippocamp was \n discovered on July 1, 2013 \n and is the smallest moon \n of Neptune.",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Proteus",
                        imagePath: kNeptuneProteusImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Nereid",
                        imagePath: kNeptuneNereidImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Halimede",
                        imagePath: kNeptuneProteusImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Sao",
                        imagePath: '',
                        imageHeight: 0.0,
                        cardText: "There is \n no image.",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Laomedeia",
                        imagePath: kNeptuneLaomedeiaImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Psamathe",
                        imagePath: kNeptunePsamatheImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
                    Container(
                      child: PlanetCard(
                        planetCardTitle:
                        "Neso",
                        imagePath: kNeptuneNesoImagePath,
                        imageHeight: 200.0,
                        cardText: "",
                      ),
                    ),
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
                              planetCardTitle: "Neptune-Earth comparison",
                              cardText: "",
                              imagePath: kNeptuneEarthSizeComparisonImagePath,
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
                              planetCardTitle: "Diameter",
                              cardText:
                                  "49,500km \n\n That's 3.9 times bigger than earth",
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
                                  "1.02 x 10\u00B2\u2076 kg \n\n That's 17 times as much mass compared to Earth.",
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
                                  "6.3 x 10\u00B9\u00B3 km\u00B3 \n\n You can fit 57 Earths inside Neptune.",
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
                              planetCardTitle: "Day on Neptune",
                              cardText: "16h 6min",
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
                              cardText: "5.43 km/s",
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
                              planetCardTitle: "Year on Neptune",
                              cardText: "164.79 Earth years.",
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
                                  "11.15 m/s\u00B2 \n 1.14g \n\n That's only 14% more compared to Earth.",
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
                              cardText: "23.5 km/s",
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
                planetCardTitle: "Neptune from space",
                imagePath: kNeptuneCloseImagePath,
                imageHeight: 400.0,
                cardText: "",
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: PlanetCard(
                planetCardTitle: "Voyager 2",
                imagePath: kNeptuneVoyagerSatelliteImagePath,
                imageHeight: 400.0,
                cardText: kNeptunVoyagerSatelliteDescription,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyOwnBottomNavigatorBar(),
    );
  }
}
