import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:sunmaster/constants.dart';


class PlanetThumbnailCard extends StatelessWidget {
  PlanetThumbnailCard(
      {@required this.planetImagePath,
      @required this.planetName,
      this.planetDescription,
      this.onPress,
      @required this.planetShadowColor});

  final String planetDescription;
  final String planetImagePath;
  final String planetName;
  final Function onPress;
  final Color planetShadowColor;

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
            child: Container(
              child: Image(
                image: AssetImage(planetImagePath),
                height: 150.0,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: planetShadowColor,
                    blurRadius: 152.0, // has the effect of softening the shadow
                    spreadRadius: 0.0, // has the effect of extending the shadow
                    offset: Offset(
                      5.0, // horizontal, move right 10
                      10.0, // vertical, move down 10
                    ),
                  )
                ],
              ),
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
