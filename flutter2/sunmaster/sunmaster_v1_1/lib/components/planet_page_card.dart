import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:sunmaster/constants.dart';


class PlanetPageCard extends StatelessWidget {
  PlanetPageCard(
      {@required this.planetName});

  final String planetName;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kReusableCardColor,
      cardChild: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Text(
            planetName,
            style: kPlanetNameTextStyle,
          ),
          SizedBox(height: 15.0),
          Text(
            "Loreum imps ssdf dfkfdj jdfgj dhlg hdfhjkg jdghk jdkjf gdkfhgk dfjkg jkdfgjk dfjg j dfg jkdfjkg kjdkfj gdfkg jhdfhjkgkjdhfgk",
            softWrap: true,
            textAlign: TextAlign.center,
            style: kPlanetDescriptionTextStyle,
          ),
        ],
      ),
    );
  }
}
