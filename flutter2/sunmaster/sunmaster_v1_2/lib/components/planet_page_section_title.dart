import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';

class PlanetPageSectionTitle extends StatelessWidget {
  PlanetPageSectionTitle({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      child: Text(
        title,
        style: kPlanetPageSectionTitleTextStyle,
      ),
    );
  }
}
