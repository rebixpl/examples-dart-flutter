import 'package:flutter/material.dart';
import 'package:sunmaster/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: cardChild,
      ),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        // It creates those circular edges of container
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
        boxShadow: [
          BoxShadow(
            color: kReusableCardColor.withGreen(230),
            blurRadius: 15.0, // has the effect of softening the shadow
            spreadRadius: 0.0, // has the effect of extending the shadow
            offset: Offset(
              5.0, // horizontal, move right 10
              10.0, // vertical, move down 10
            ),
          )
        ],
      ),
    );
  }
}
