import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:sunmaster/constants.dart';

class PlanetCard extends StatelessWidget {
  PlanetCard({@required this.planetCardTitle, this.imagePath, this.imageHeight, this.cardText});

  final String planetCardTitle;
  final String imagePath;
  final double imageHeight;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kReusableCardColor,
      cardChild: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              planetCardTitle,
              textAlign: TextAlign.center,
              style: kPlanetNameTextStyle.copyWith(
                fontSize: 35.0,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage("$imagePath"),
              height: imageHeight,
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$cardText",
              softWrap: true,
              textAlign: TextAlign.center,
              style: kPlanetDescriptionTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
