import 'package:flutter/material.dart';

////////// COLORS
const String kSunImagePath = "lib/gfx/sun_planet.png";
const String kMarsImagePath = "lib/gfx/mars_planet.png";
////////// COLORS





////////// TEXT STYLES
const kAppBarTextStyle = TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w300,
  color: Colors.black,
  fontSize: 40.0,
  letterSpacing: 4.0,
);

const kPlanetNameTextStyle = TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w800,
  color: Colors.white,
  fontSize: 40.0,
  letterSpacing: 4.0,
    shadows: [
      Shadow( // bottomLeft
          offset: Offset(-1.5, -1.5),
          color: Colors.grey,
          blurRadius: 15.0,
      ),
      Shadow( // bottomRight
          offset: Offset(1.5, -1.5),
          color: Color(0xFFF4F4F4),

      ),
      Shadow( // topRight
          offset: Offset(1.5, 1.5),
          color: Color(0xFFF4F4F4),
      ),
      Shadow( // topLeft
          offset: Offset(-1.5, 1.5),
          color: Colors.grey,
      ),
    ]
);

const kPlanetDescriptionTextStyle = TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.w800,
    color: Color(0xffE0E3423),
    fontSize: 20.0,
    letterSpacing: 2.0,
    shadows: [
      Shadow( // topLeft
        blurRadius: 15.0,
        offset: Offset(-1, 1),
        color: Colors.grey,
      ),
    ]
);
////////// TEXT STYLES




////////// COLORS
const kReusableCardColor = Color(0xFFF4F4A4); // that`s nice light yellow i think
////////// COLORS