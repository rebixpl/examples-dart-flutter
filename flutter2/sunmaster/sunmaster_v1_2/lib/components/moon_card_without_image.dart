import 'package:flutter/material.dart';
import 'package:sunmaster/components/planet_page_card.dart';

class MoonCardWithoutImage extends PlanetCard {
  MoonCardWithoutImage({@required this.moonName});
  final String moonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PlanetCard(
        planetCardTitle:
        moonName,
        imagePath: '',
        imageHeight: 0.0,
        cardText: "There is \n no image.",
      ),
    );
  }
}