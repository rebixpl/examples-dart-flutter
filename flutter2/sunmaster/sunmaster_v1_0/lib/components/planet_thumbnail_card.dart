import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:sunmaster/constants.dart';

class PlanetThumbnailCard extends StatelessWidget {
  PlanetThumbnailCard(
      {@required this.planetImagePath,
      @required this.planetName,
      this.planetDescription,
      this.onPress});

  final String planetDescription;
  final String planetImagePath;
  final String planetName;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kReusableCardColor,
      cardChild: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: onPress,
            child: Image(
              image: AssetImage(planetImagePath),
              height: 150.0,
            ),
          ),
          Text(
            planetName,
            style: kPlanetNameTextStyle,
          ),
          SizedBox(height: 15.0),
          Text(
            "Tap on the planet to learn more.",
            textAlign: TextAlign.center,
            style: kAppBarTextStyle.copyWith(
              fontSize: 15.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            "$planetDescription",
            softWrap: true,
            textAlign: TextAlign.center,
            style: kPlanetDescriptionTextStyle,
          ),
        ],
      ),
    );
  }
}
